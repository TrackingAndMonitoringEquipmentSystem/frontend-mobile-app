import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class RegisterEnterOTPPage extends StatelessWidget {
  const RegisterEnterOTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterEnterOtpBloc>(),
      child: BlocConsumer<RegisterEnterOtpBloc, RegisterEnterOtpState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterEnterEmailRoute());
            context
                .read<RegisterEnterOtpBloc>()
                .add(SetState(state.copyWith(isNavigateNextPage: false)));
          }
        },
        builder: (context, state) => FirebasePhoneAuthProvider(
          child: FirebasePhoneAuthHandler(
            phoneNumber: state.telNo.toInternationalTelNo(),
            onLoginFailed: (authException) {
              if (authException.code == 'invalid-verification-code') {
                FlushbarHelper.createError(
                  message: 'กรอกรหัส OTP ผิด กรุณาลองอีกครั้ง',
                ).show(context);
                state.controller.text = '';
              } else if (authException.code == 'session-expired') {
                FlushbarHelper.createError(
                  message: 'รหัส OTP หมดอายุ กรุณาลองอีกครั้ง',
                ).show(context);
                context
                    .read<RegisterEnterOtpBloc>()
                    .add(SetState(state.copyWith(isError: true)));
              } else {
                FlushbarHelper.createError(
                  message: 'เกิดข้อผิดพลาดในการส่งรหัส OTP กรุณาลองอีกครั้ง',
                ).show(context);
                context
                    .read<RegisterEnterOtpBloc>()
                    .add(SetState(state.copyWith(isError: true)));
              }
            },
            onLoginSuccess: (userCredential, autoVerified) {
              context
                  .read<RegisterEnterOtpBloc>()
                  .add(SetState(state.copyWith(isNavigateNextPage: true)));
            },
            builder: (context, controller) => LoadingOverlayPro(
              isLoading:
                  (!controller.codeSent && !state.isError) || state.isLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Phone number',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(color: Colors.black),
                  elevation: 0,
                ),
                body: Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenSize.width * 0.1,
                    screenSize.height * 0.05,
                    screenSize.width * 0.1,
                    0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/authentication_feature/register_phone.png',
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.telNo.toLocalTelNo(),
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline2!
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.isError
                                ? 'เกิดข้อผิดพลาดในการส่งรหัส OTP'
                                : 'รหัส OTP ถูกส่งไปที่เบอร์นี้แล้ว',
                            style: Theme.of(context).primaryTextTheme.caption,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (!state.isError)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputText(
                              label: 'กรอก OTP',
                              placeHolder: 'กรอก OTP',
                              onChanged: (value) => context
                                  .read<RegisterEnterOtpBloc>()
                                  .add(OtpChanged(value, controller)),
                              keyboardType: TextInputType.number,
                              isError: state.isShowErrorMessage &&
                                  !state.otp.isValid(),
                              errorMessage: state.otp.isValid()
                                  ? ''
                                  : state.otp.value
                                      .fold((l) => l.message, (r) => ''),
                              isRequired: true,
                              controller: state.controller,
                            )
                          ],
                        ),
                      const SizedBox(
                        height: 50,
                      ),
                      if (state.isError)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Button(
                              'ลองอีกครั้ง',
                              onPressed: () {
                                controller.sendOTP();
                              },
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

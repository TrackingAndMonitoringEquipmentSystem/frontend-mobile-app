import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart';
import 'package:frontend/injection.dart';

class RegisterEnterPasswordPage extends StatelessWidget {
  const RegisterEnterPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterEnterPasswordBloc>(),
      child:
          BlocConsumer<RegisterEnterPasswordBloc, RegisterEnterPasswordState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterEnterRoleRoute());
            context
                .read<RegisterEnterPasswordBloc>()
                .add(SetState(state.copyWith(isNavigateNextPage: false)));
          }
        },
        builder: (context, state) => Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              'Password',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(
              screenSize.height * 0.05,
              MediaQuery.of(context).viewInsets.bottom == 0
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.05,
              screenSize.width * 0.1,
              0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/authentication_feature/register_lock.png',
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter your ',
                        style: Theme.of(context).primaryTextTheme.headline2,
                      ),
                      Text(
                        'password',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .headline2!
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
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
                        'รหัสผ่านต้องประกอบไปด้วย',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'อักษรภาษาอังกฤษหรือตัวเลขอย่างน้อย 8 ตัวอักษร',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputText(
                        label: 'รหัสผ่าน',
                        placeHolder: 'รหัสผ่าน',
                        onChanged: (password) => context
                            .read<RegisterEnterPasswordBloc>()
                            .add(PasswordChanged(password)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            !state.isShowPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            context.read<RegisterEnterPasswordBloc>().add(
                                  SetState(
                                    state.copyWith(
                                      isShowPassword: !state.isShowPassword,
                                    ),
                                  ),
                                );
                          },
                        ),
                        isObscureText: !state.isShowPassword,
                        isError: state.isShowErrorMessage &&
                            !state.password.isValid(),
                        isRequired: true,
                        errorMessage: state.password.isValid()
                            ? ''
                            : state.password.value
                                .fold((l) => l.message, (r) => ''),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputText(
                        label: 'ยืนยันรหัสผ่าน',
                        placeHolder: 'ยืนยันรหัสผ่าน',
                        onChanged: (confirmPassword) =>
                            context.read<RegisterEnterPasswordBloc>().add(
                                  ConfirmPasswordChanged(confirmPassword),
                                ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            !state.isShowConfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            context.read<RegisterEnterPasswordBloc>().add(
                                  SetState(
                                    state.copyWith(
                                      isShowConfirmPassword:
                                          !state.isShowConfirmPassword,
                                    ),
                                  ),
                                );
                          },
                        ),
                        isObscureText: !state.isShowConfirmPassword,
                        isError: state.isShowErrorMessage &&
                            (!state.confirmPassword.isValid() ||
                                state.isErrorPasswordNotSame),
                        isRequired: true,
                        errorMessage: !state.confirmPassword.isValid()
                            ? state.confirmPassword.value
                                .fold((l) => l.message, (r) => 'ccc')
                            : state.isErrorPasswordNotSame
                                ? 'รหัสผ่านไม่ตรงกัน'
                                : '',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        'ถัดไป',
                        onPressed: () {
                          context
                              .read<RegisterEnterPasswordBloc>()
                              .add(const Save());
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

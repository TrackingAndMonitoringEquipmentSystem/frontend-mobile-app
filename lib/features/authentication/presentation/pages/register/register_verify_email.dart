import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_verify_email/register_verify_email_bloc.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class RegisterVerifyEmailPage extends HookWidget {
  const RegisterVerifyEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          getIt<RegisterVerifyEmailBloc>()..add(const InitState()),
      child: BlocConsumer<RegisterVerifyEmailBloc, RegisterVerifyEmailState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterCompletedRoute());
            context
                .read<RegisterVerifyEmailBloc>()
                .add(SetState(state.copyWith(isNavigateNextPage: false)));
          } else if (state.isError) {
            state.authError?.when(
              cancelledByUser: () {},
              serverError: () => FlushbarHelper.createError(
                      message: 'ระบบเกิดข้อผิดพลาดกรุณาลองอีกครั้ง')
                  .show(context),
              emailAlreadyInUse: () =>
                  FlushbarHelper.createError(message: 'อีเมลนี้มีการใช้งานแล้ว')
                      .show(context),
              invalidEmailAndPasswordCombination: () =>
                  FlushbarHelper.createError(message: 'อีเมลหรือรหัสไม่ถูกต้อง')
                      .show(context),
              cantSendVerifyEmail: () => FlushbarHelper.createError(
                message: 'เกิดข้อผิดพลาดในการส่งอีเมลกรุณาลองอีกครั้ง',
              ).show(context),
              waitingForApprove: () => FlushbarHelper.createError(
                message: 'กรุณารอผู้ดูแลระบบอนุมัติบัญชีก่อน',
              ).show(context),
              emailNotVerified: () =>
                  FlushbarHelper.createError(message: 'ยังไม่ได้ยืนยันอีเมล')
                      .show(context),
            );
            context.read<RegisterVerifyEmailBloc>().add(
                  SetState(state.copyWith(isError: false)),
                );
          }
        },
        builder: (context, state) => LoadingOverlayPro(
          isLoading: state.isLoading,
          progressIndicator: const CircularProgressIndicator(),
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.05,
                  screenSize.width * 0.1,
                  0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'ขั้นตอนยืนยัน Email',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'ยืนยัน Email ของคุณ ระบบได้ส่งลิงก์ยืนยันไปที่',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                            overflow: TextOverflow.clip,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          state.email.getOrCrash(),
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline2
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/authentication_feature/register_email.png',
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'กรุณากลับมาที่ Toollo เพื่อเริ่มต้นใช้งาน',
                          style: Theme.of(context).primaryTextTheme.caption,
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
                          onPressed: () async {
                            final _authenticationRepository =
                                getIt<AuthenticationRepository>();
                            context
                                .read<RegisterVerifyEmailBloc>()
                                .add(SetState(state.copyWith(isLoading: true)));
                            await _authenticationRepository
                                .reloadFirebaseUser();
                            context.read<RegisterVerifyEmailBloc>().add(
                                  SetState(state.copyWith(isLoading: false)),
                                );
                            final firebaseUser =
                                _authenticationRepository.getFirebaseUser;
                            if (firebaseUser?.emailVerified == true) {
                              AutoRouter.of(context)
                                  .push(const RegisterAddFaceIdRoute());
                            } else {
                              FlushbarHelper.createError(
                                      message: 'ยังไม่ได้ยืนยันอีเมล')
                                  .show(context);
                            }
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ไม่ได้รับ Email ใช่หรือไม่?',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            context
                                .read<RegisterVerifyEmailBloc>()
                                .add(const InitState());
                          },
                          child: Text(
                            'ส่งลิงค์ยืนยันอีกครั้ง',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption
                                ?.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        Text(
                          ' หรือ ',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                        TextButton(
                          onPressed: () {
                            AutoRouter.of(context).popUntilRouteWithName(
                              RegisterEnterEmailRoute.name,
                            );
                          },
                          child: Text(
                            'เปลี่ยน Email',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption
                                ?.copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () async {
                            context
                                .read<RegisterVerifyEmailBloc>()
                                .add(SetState(state.copyWith(isLoading: true)));
                            await getIt<AuthenticationRepository>().signOut();
                            context.read<RegisterVerifyEmailBloc>().add(
                                SetState(state.copyWith(isLoading: false)));
                            AutoRouter.of(context).replace(const SignInRoute());
                          },
                          child: Text(
                            'กลับไปหน้าหลัก',
                            style: Theme.of(context).primaryTextTheme.caption,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart';
import 'package:frontend/injection.dart';

class RegisterEnterEmailPage extends StatelessWidget {
  const RegisterEnterEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterEnterEmailBloc>(),
      child: BlocConsumer<RegisterEnterEmailBloc, RegisterEnterEmailState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterEnterPasswordRoute());
            context
                .read<RegisterEnterEmailBloc>()
                .add(SetState(state.copyWith(isNavigateNextPage: false)));
          }
        },
        builder: (context, state) => Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              'Email',
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
                        'assets/images/authentication_feature/register_email.png',
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
                      'Email',
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
                      'กรอก Email ของคุณ',
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
                      label: 'Email',
                      placeHolder: 'Email',
                      onChanged: (email) =>
                          context.read<RegisterEnterEmailBloc>()
                            ..add(EmailChanged(email)),
                      keyboardType: TextInputType.emailAddress,
                      isError:
                          state.isShowErrorMessage && !state.email.isValid(),
                      isRequired: true,
                      errorMessage: state.email.isValid()
                          ? ''
                          : state.email.value.fold((l) => l.message, (r) => ''),
                      initialValue:
                          state.email.isValid() ? state.email.getOrCrash() : '',
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
                        context.read<RegisterEnterEmailBloc>().add(
                              const Save(),
                            );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

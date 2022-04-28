import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart';
import 'package:frontend/injection.dart';

class RegisterEnterPhoneNumberPage extends StatelessWidget {
  const RegisterEnterPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterEnterPhoneNumberBloc>(),
      child: BlocConsumer<RegisterEnterPhoneNumberBloc,
          RegisterEnterPhoneNumberState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterEnterOTPRoute());
            context
                .read<RegisterEnterPhoneNumberBloc>()
                .add(const SetNavigateNextPage(isNavigateNextPage: false));
          }
        },
        builder: (context, state) => Scaffold(
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
                      'Enter your ',
                      style: Theme.of(context).primaryTextTheme.headline2,
                    ),
                    Text(
                      'phone number',
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
                      'กรอกเบอร์โทรศัพท์ที่ใช้จริง',
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
                      label: 'เบอร์โทรศัพท์',
                      placeHolder: 'เบอร์โทรศัพท์',
                      onChanged: (phoneNumber) => context
                          .read<RegisterEnterPhoneNumberBloc>()
                          .add(PhoneNumberChanged(phoneNumber)),
                      keyboardType: TextInputType.number,
                      isRequired: true,
                      isError:
                          state.isShowErrorMessage && !state.telNo.isValid(),
                      errorMessage:
                          state.telNo.value.fold((l) => l.message, (r) => ''),
                      initialValue:
                          state.telNo.isValid() ? state.telNo.getOrCrash() : '',
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
                            .read<RegisterEnterPhoneNumberBloc>()
                            .add(const Save());
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

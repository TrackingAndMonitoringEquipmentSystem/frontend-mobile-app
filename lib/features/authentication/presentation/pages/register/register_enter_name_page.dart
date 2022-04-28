import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart';
import 'package:frontend/injection.dart';

class RegisterEnterNamePage extends StatelessWidget {
  const RegisterEnterNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterEnterNameBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Name',
            style: Theme.of(context).primaryTextTheme.headline2,
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<RegisterEnterNameBloc, RegisterEnterNameState>(
          listener: (context, state) {
            if (state.isNavigateNextPage) {
              AutoRouter.of(context)
                  .push(const RegisterEnterPhoneNumberRoute());
              context
                  .read<RegisterEnterNameBloc>()
                  .add(const SetNavigateNextPage(isNavigateNextPage: false));
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                screenSize.width * 0.09,
                40,
                screenSize.width * 0.09,
                0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/authentication_feature/register_id_card.png',
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
                        'name',
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
                        'กรอกชื่อจริงและนามสกุลของคุณ',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputText(
                        label: 'ชื่อจริง',
                        placeHolder: 'ชื่อจริง',
                        onChanged: (firstName) =>
                            context.read<RegisterEnterNameBloc>().add(
                                  FirstNameChanged(firstName),
                                ),
                        isError: state.isShowErrorMessage &&
                            !state.firstName.isValid(),
                        errorMessage: state.firstName.value
                            .fold((l) => l.message, (r) => ''),
                        isRequired: true,
                        initialValue: state.firstName.isValid()
                            ? state.firstName.getOrCrash()
                            : '',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InputText(
                        label: 'นามสกุล',
                        placeHolder: 'นามสกุล',
                        onChanged: (lastName) =>
                            context.read<RegisterEnterNameBloc>().add(
                                  LastNameChanged(lastName),
                                ),
                        isError: state.isShowErrorMessage &&
                            !state.lastName.isValid(),
                        errorMessage: state.lastName.value
                            .fold((l) => l.message, (r) => ''),
                        isRequired: true,
                        initialValue: state.lastName.isValid()
                            ? state.lastName.getOrCrash()
                            : '',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        'ถัดไป',
                        onPressed: () {
                          context.read<RegisterEnterNameBloc>().add(
                                const Save(),
                              );
                        },
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

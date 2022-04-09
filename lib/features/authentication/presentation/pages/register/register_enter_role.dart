import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class RegisterEnterRolePage extends StatelessWidget {
  const RegisterEnterRolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          getIt<RegisterEnterRoleBloc>()..add(const InitState()),
      child: BlocConsumer<RegisterEnterRoleBloc, RegisterEnterRoleState>(
        listener: (context, state) {
          if (state.isNavigateNextPage) {
            AutoRouter.of(context).push(const RegisterEnterPinSettingRoute());
            context
                .read<RegisterEnterRoleBloc>()
                .add(SetState(state.copyWith(isNavigateNextPage: false)));
          }
        },
        builder: (context, state) => LoadingOverlayPro(
          isLoading: state.isLoading,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Role',
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
                          'assets/images/authentication_feature/register_role.png',
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
                        'role',
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
                        'เลือก role และแผนกของคุณ',
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
                      BottomSheetSingleSelect(
                        label: 'Role',
                        placeHolder: 'Role',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': 'Super admin', 'value': 1},
                          {'displayText': 'Admin', 'value': 2},
                          {'displayText': 'Master maintainer', 'value': 3},
                          {'displayText': 'Maintainer', 'value': 4},
                          {'displayText': 'User', 'value': 5},
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      BottomSheetSingleSelect(
                        label: 'แผนก',
                        placeHolder: 'แผนก',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': 'แผนกบริหาร', 'value': 1},
                          {'displayText': 'แผนกบุคคล', 'value': 2},
                          {'displayText': 'แผนกจัดซื้อ', 'value': 3},
                          {'displayText': 'แผนกบัญชี', 'value': 4},
                          {'displayText': 'แผนกบัญชี', 'value': 5},
                          {'displayText': 'แผนกขาย', 'value': 6},
                          {'displayText': 'แผนกการตลาด', 'value': 7},
                          {'displayText': 'แผนกประชาสัมพันธ์    ', 'value': 8},
                        ],
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
                              .read<RegisterEnterRoleBloc>()
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
      ),
    );
  }
}

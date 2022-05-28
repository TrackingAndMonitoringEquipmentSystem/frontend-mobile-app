import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class RegisterCompletedPage extends HookWidget {
  const RegisterCompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    return LoadingOverlayPro(
      isLoading: isLoading.value,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/authentication_feature/register_completed.png',
                        height: 150,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'สมัครสมาชิก ',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                    Text(
                      'สำเร็จ',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline1
                          ?.copyWith(
                              color: const Color.fromRGBO(0, 147, 120, 1)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'บัญชีของคุณยัง',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    Text(
                      ' ไม่ได้รับการอนุมัติ ',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1
                          ?.copyWith(
                              color: const Color.fromRGBO(244, 186, 36, 1)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'จากผู้ดูแลระบบ',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'กรุณารอการอนุมัติบัญชีของคุณจากผู้ดูแลระบบ',
                      style: Theme.of(context).primaryTextTheme.caption,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                      'กลับไปยังหน้าหลัก',
                      onPressed: () async {
                        isLoading.value = true;
                        await getIt<AuthenticationRepository>().signOut();
                        isLoading.value = false;
                        AutoRouter.of(context)
                            .replaceAll([const SignInRoute()]);
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

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class AccountPage extends HookWidget {
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
            padding: EdgeInsets.only(
              top: 25,
              left: screenSize.width * 0.1,
              right: screenSize.width * 0.1,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Card(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Darlene Robertson',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/role_management/super_admin_icon.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ],
                            ),
                            Text(
                              'Super admin | ??????????????????????????????',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            Text(
                              'kenzi.lawson@example.com',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: Image.asset(
                          'assets/images/account/profile_image_example.png',
                          fit: BoxFit.fill,
                        ).image,
                      ),
                    )
                  ],
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                // Card(
                //   child: ListTile(
                //     leading: Image.asset(
                //       'assets/icons/account/account_icon.png',
                //       width: 50,
                //       height: 50,
                //     ),
                //     title: const Text('???????????????????????????????????????'),
                //     trailing: const Icon(Icons.arrow_forward_ios),
                //     onTap: () {},
                //   ),
                // ),
                // const SizedBox(
                //   height: 15,
                // ),
                // Card(
                //   child: ListTile(
                //     leading: Image.asset(
                //       'assets/icons/account/master_lock_icon.png',
                //       width: 50,
                //       height: 50,
                //     ),
                //     title: const Text('?????????????????????????????????????????????'),
                //     trailing: const Icon(Icons.arrow_forward_ios),
                //     onTap: () {},
                //   ),
                // ),
                // const SizedBox(
                //   height: 15,
                // ),
                // Card(
                //   child: ListTile(
                //     leading: Image.asset(
                //       'assets/icons/account/alert_icon.png',
                //       width: 50,
                //       height: 50,
                //     ),
                //     title: const Text('??????????????????????????????????????????????????????'),
                //     trailing: const Icon(Icons.arrow_forward_ios),
                //     onTap: () {},
                //   ),
                // ),
                // const SizedBox(
                //   height: 15,
                // ),
                // Card(
                //   child: ListTile(
                //     leading: Image.asset(
                //       'assets/icons/account/question_icon.png',
                //       width: 50,
                //       height: 50,
                //     ),
                //     title: const Text('????????????????????????????????????'),
                //     trailing: const Icon(Icons.arrow_forward_ios),
                //     onTap: () {},
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    isLoading.value = true;
                    getIt<AuthenticationRepository>().signOut().then((value) {
                      AutoRouter.of(context).replace(const SignInRoute());
                      isLoading.value = false;
                    });
                  },
                  child: Text(
                    '??????????????????????????????',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline2!
                        .copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

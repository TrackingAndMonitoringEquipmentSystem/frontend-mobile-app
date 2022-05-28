import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import 'package:frontend/core/utils/environment.dart' as environment;

class AccountPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final user = useState<UserType?>(null);
    useEffect(
      () {
        Future.microtask(() async {
          isLoading.value = true;
          user.value =
              await getIt<AuthenticationRepository>().getSignedInUser();
          print('profilePicUrl: ${user.value?.profilePicUrl == null}');
          isLoading.value = false;
        });
        return null;
      },
      [],
    );
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
                                  user.value != null
                                      ? '${user.value!.firstName} ${user.value!.lastName}'
                                      : '',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                if (user.value != null)
                                  renderRoleIcon(
                                    roleFromString(user.value!.role!.name!),
                                  ),
                              ],
                            ),
                            Text(
                              user.value != null
                                  ? '${roleFromString(user.value!.role!.name!).toNameString()} | ${user.value!.department!.name}'
                                  : '',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            Text(
                              user.value != null ? user.value!.email : '',
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
                        backgroundImage: user.value?.profilePicUrl != null
                            ? Image.network(
                                Uri(
                                  scheme: environment.baseSchema,
                                  host: environment.baseApiUrl,
                                  port: environment.baseApiPort,
                                  path: user.value?.profilePicUrl,
                                ).toString(),
                                fit: BoxFit.fill,
                              ).image
                            : Image.asset(
                                'assets/images/authentication_feature/register_account.png',
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
                //     title: const Text('ข้อมูลส่วนตัว'),
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
                //     title: const Text('เปลี่ยนรหัสผ่าน'),
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
                //     title: const Text('แจ้งปัญหากับแอดมิน'),
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
                //     title: const Text('เกี่ยวกับเรา'),
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
                    'ออกจากระบบ',
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

  Widget renderRoleIcon(Role role) {
    if (role == Role.user) {
      return Container();
    }

    String assetPath;
    if (role == Role.superAdmin) {
      assetPath = 'assets/icons/role_management/super_admin_icon.png';
    } else if (role == Role.admin) {
      assetPath = 'assets/icons/role_management/admin_icon.png';
    } else if (role == Role.masterMaintainer) {
      assetPath = 'assets/icons/role_management/master_maintainer_icon.png';
    } else {
      assetPath = 'assets/icons/role_management/maintainer_icon.png';
    }
    return Image.asset(
      assetPath,
      width: 30,
      height: 30,
    );
  }
}

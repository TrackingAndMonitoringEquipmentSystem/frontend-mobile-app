import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/home_drawer.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/role_management/domain/repositories/user_repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class RoleManagementPage extends HookWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final waitingUsers = useState<List<UserType>>([]);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result = await getIt<UserRepository>().getWaitingUsers();
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) => waitingUsers.value = r,
          );
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
        drawer: const HomeDrawer(),
        key: _key,
        appBar: AppBar(
          title: Text(
            'การจัดการสิทธิ',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _key.currentState!.openDrawer(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.05,
            20,
            screenSize.width * 0.05,
            20,
          ),
          child: Column(
            children: [
              // Card(
              //   child: ListTile(
              //     leading: Image.asset(
              //       'assets/icons/role_management/add_user_icon.png',
              //       width: 50,
              //       height: 50,
              //     ),
              //     title: const Text('เพิ่มผู้ใช้'),
              //     trailing: const Icon(Icons.arrow_forward_ios),
              //     onTap: () {
              //       AutoRouter.of(context).push(const AddUserRoute());
              //     },
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              Card(
                child: ListTile(
                  leading: Image.asset(
                    'assets/icons/role_management/approve_user_icon.png',
                    width: 50,
                    height: 50,
                  ),
                  title: Row(
                    children: [
                      const Text('อนุมัติผู้ใช้งาน'),
                      const SizedBox(
                        width: 10,
                      ),
                      if (waitingUsers.value.length > 0)
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                          child: Text(
                            waitingUsers.value.length.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    AutoRouter.of(context).push(const ApproveUserRoute());
                  },
                ),
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              // Card(
              //   child: ListTile(
              //     leading: Image.asset(
              //       'assets/icons/core/account_group_icon_active.png',
              //       width: 50,
              //       height: 50,
              //     ),
              //     title: const Text('สมาชิกทั้งหมด'),
              //     trailing: const Icon(Icons.arrow_forward_ios),
              //     onTap: () {
              //       AutoRouter.of(context).push(const AllAccountRoute());
              //     },
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // Card(
              //   child: ListTile(
              //     leading: Image.asset(
              //       'assets/icons/role_management/role_icon.png',
              //       width: 50,
              //       height: 50,
              //     ),
              //     title: const Text('จัดการแผนก'),
              //     trailing: const Icon(Icons.arrow_forward_ios),
              //     onTap: () {
              //       AutoRouter.of(context)
              //           .push(const DepartmentManagementRoute());
              //     },
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // Card(
              //   child: ListTile(
              //     leading: Image.asset(
              //       'assets/icons/role_management/block_icon.png',
              //       width: 50,
              //       height: 50,
              //     ),
              //     title: const Text('การบล็อก'),
              //     trailing: const Icon(Icons.arrow_forward_ios),
              //     onTap: () {
              //       AutoRouter.of(context).push(const BlockAccountRoute());
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

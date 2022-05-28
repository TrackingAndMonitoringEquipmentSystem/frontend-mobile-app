import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/role_management/domain/repositories/user_repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class ApproveUserPage extends HookWidget {
  const ApproveUserPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final users = useState<List<UserType>>([]);
    final displayUsers = useState<List<UserType>>([]);
    final userRepository = getIt<UserRepository>();
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result = await userRepository.getWaitingUsers();
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) {
              users.value = r;
              displayUsers.value = r;
            },
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
        appBar: AppBar(
          title: const Text(
            'อนุมัติผู้ใช้งาน',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenSize.width * 0.8,
                  height: 50,
                  child: Row(
                    children: [
                      SearchBoxWidget(
                        placeHolder: 'ค้นหาชื่อ,แผนก, Email',
                        onChanged: (value) {
                          displayUsers.value = users.value
                              .where(
                                (element) =>
                                    element.firstName
                                        .toLowerCase()
                                        .contains(value.toLowerCase()) ||
                                    element.lastName
                                        .toLowerCase()
                                        .contains(value.toLowerCase()) ||
                                    element.department!.name!
                                        .toLowerCase()
                                        .contains(value.toLowerCase()) ||
                                    element.email
                                        .toLowerCase()
                                        .contains(value.toLowerCase()),
                              )
                              .toList();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${displayUsers.value.length} Account',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: displayUsers.value.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Row(
                                  children: [
                                    AccountCardWidget(
                                      name:
                                          '${displayUsers.value[index].firstName} ${displayUsers.value[index].lastName}',
                                      role: roleFromString(
                                        displayUsers.value[index].role!.name!,
                                      ),
                                      department: displayUsers
                                          .value[index].department!.name!,
                                      email: displayUsers.value[index].email,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 70,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Button(
                                          'อนุมัติ',
                                          onPressed: () async {
                                            isLoading.value = true;
                                            final result = await userRepository
                                                .approveOrReject(
                                                    userId: displayUsers
                                                        .value[index].id,
                                                    isApproved: true);
                                            isLoading.value = false;
                                            result.fold(
                                                (l) =>
                                                    handleErrorCase(context, l),
                                                (r) async {
                                              isLoading.value = true;
                                              final result =
                                                  await userRepository
                                                      .getWaitingUsers();
                                              result.fold(
                                                (l) =>
                                                    handleErrorCase(context, l),
                                                (r) {
                                                  users.value = r;
                                                  displayUsers.value = r;
                                                },
                                              );
                                              isLoading.value = false;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Button(
                                          'ลบ',
                                          onPressed: () async {
                                            isLoading.value = true;
                                            final result = await userRepository
                                                .approveOrReject(
                                              userId:
                                                  displayUsers.value[index].id,
                                              isApproved: false,
                                            );
                                            isLoading.value = false;
                                            result.fold(
                                                (l) =>
                                                    handleErrorCase(context, l),
                                                (r) async {
                                              isLoading.value = true;
                                              final result =
                                                  await userRepository
                                                      .getWaitingUsers();
                                              result.fold(
                                                (l) =>
                                                    handleErrorCase(context, l),
                                                (r) {
                                                  users.value = r;
                                                  displayUsers.value = r;
                                                },
                                              );
                                              isLoading.value = false;
                                            });
                                          },
                                          color: Colors.grey[200],
                                          textColor: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

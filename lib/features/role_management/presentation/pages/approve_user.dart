import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';

class ApproveUserPage extends StatelessWidget {
  final List<UserType> users;
  const ApproveUserPage({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                child: Row(children: [
                  SearchBoxWidget(
                    placeHolder: 'ค้าหาชื่อ,แผนก, Email',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ]),
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
                  '${users.length} Account',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: users.length,
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
                                    imagePath:
                                        'assets/images/account/profile_image_example.png',
                                    name:
                                        '${users[index].firstName} ${users[index].lastName}',
                                    role: Role.superAdmin,
                                    department: users[index].department!.name!,
                                    email: users[index].email,
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
                                        onPressed: () {},
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
                                  child: Row(children: [
                                    Button(
                                      'ลบ',
                                      onPressed: () {},
                                      color: Colors.grey[200],
                                      textColor: Colors.black,
                                    ),
                                  ]),
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
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class RegisterAddFaceIdCompletedPage extends StatelessWidget {
  const RegisterAddFaceIdCompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                    'เพิ่ม Face ID',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  Text(
                    'สำเร็จ',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline1
                        ?.copyWith(color: const Color.fromRGBO(0, 147, 120, 1)),
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
                    'เริ่มต้นใช้งาน',
                    onPressed: () {
                      AutoRouter.of(context).push(const HomeRoute());
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

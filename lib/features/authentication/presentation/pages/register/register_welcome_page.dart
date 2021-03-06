import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class RegisterWelcomePage extends StatelessWidget {
  const RegisterWelcomePage({Key? key}) : super(key: key);

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
                  Text(
                    'สมัครสมาชิก',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  )
                ],
              ),
              const SizedBox(
                height: 54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/authentication_feature/toollo_logo.png',
                    width: 130,
                    height: 104,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to ',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                  Text(
                    'Toollo',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline2!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
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
                    'สมัครสมาชิกเพื่อเริ่มต้นการใช้งาน',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              const SizedBox(
                height: 77,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    'เริ่มการสมัครสมาชิก',
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(const RegisterEnterNameRoute());
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 112,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'เป็นสมาชิกแล้วใช่หรือไม่ ',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  TextButton(
                    onPressed: () {
                      AutoRouter.of(context).navigate(const SignInRoute());
                    },
                    child: Text(
                      'เข้าสู่ระบบ',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .caption
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

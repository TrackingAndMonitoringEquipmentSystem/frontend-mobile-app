import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen/authen_bloc.dart';
import 'package:frontend/injection.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseMessaging.onMessage.listen(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    useEffect(
      () {
        Future.microtask(() async {
          RemoteMessage? initialMessage =
              await FirebaseMessaging.instance.getInitialMessage();
          if (initialMessage != null) {
            _handleMessage(initialMessage);
          }
        });
        return null;
      },
      [],
    );
    return BlocListener<AuthenBloc, AuthenState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            AutoRouter.of(context).replace(const HomeRoute());
          },
          unauthenticated: (_) {
            AutoRouter.of(context).replace(const SignInRoute());
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: Image.asset(
                  'assets/images/authentication_feature/name_image.png',
                  height: 200,
                ),
              ),
              const CircularProgressIndicator(),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMessage(RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print(
          'Message also contained a notification: ${message.notification?.title}');
    }
    print('type: ${message.data['type']}');
    if (message.data['type'] == 'borrow') {
      final router = getIt<AppRouter>();
      router.push(BorrowReturnRoute(
          borrowReturnGroupId: int.parse(message.data['id'] as String)));
    }
  }
}

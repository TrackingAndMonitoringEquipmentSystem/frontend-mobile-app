import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen/authen_bloc.dart';
import 'package:frontend/injection.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'IBM Plex Sans Thai',
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthenBloc>()..add(const AuthenEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp.router(
        title: 'toollo',
        debugShowCheckedModeBanner: false,
        theme: theme.copyWith(
          primaryColor: const Color.fromRGBO(85, 8, 182, 1),
          primaryColorDark: const Color.fromRGBO(25, 2, 54, 1),
          dividerColor: const Color.fromRGBO(224, 224, 224, 1),
          colorScheme: theme.colorScheme.copyWith(
            primary: const Color.fromRGBO(85, 8, 182, 1),
            secondary: const Color.fromRGBO(128, 36, 244, 1),
            error: Colors.red,
            onBackground: Colors.grey.shade400,
            background: const Color.fromRGBO(60, 60, 67, 0.6),
          ),
          primaryTextTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'IBM Plex Sans Thai',
            ),
            headline2: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 18,
              fontFamily: 'IBM Plex Sans Thai',
              fontWeight: FontWeight.bold,
            ),
            subtitle1: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 14,
              fontFamily: 'IBM Plex Sans Thai',
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 14,
              fontFamily: 'IBM Plex Sans Thai',
            ),
            caption: const TextStyle(
              color: Color.fromRGBO(60, 60, 67, 0.6),
              fontSize: 13,
              fontFamily: 'IBM Plex Sans Thai',
            ),
          ),
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
          placeholder: (context) => const SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}

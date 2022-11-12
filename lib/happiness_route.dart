import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/repository/auth_repository.dart';
import 'package:happiness_client/screen/home_screen.dart';
import 'package:happiness_client/screen/login_screen.dart';
import 'package:happiness_client/signup/bloc/signup_bloc.dart';

abstract class HappinessRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case LoginScreen.routeName:
        page = BlocProvider(
          create: (context) => SignupBloc(authRepository: context.read<AuthRepository>()),
          child: const LoginScreen(),
        );
        break;
      case HomeScreen.routeName:
        page = const HomeScreen();
    }

    return CupertinoPageRoute(settings: settings, builder: (context) => page);
  }
}

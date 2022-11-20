import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/screen/home/home_screen.dart';
import 'package:happiness_client/screen/login_screen.dart';
import 'package:happiness_client/splash/bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      context.read<SplashBloc>().add(LoadToken());
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case SplashNeedLogin:
            Navigator.of(context).pushNamedAndRemoveUntil(LoginScreen.routeName, (route) => false);
            break;
          case SplashLoginSuccess:
            Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
            break;
        }
      },
      child: const Center(
        child: Text('splash'),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/screen/home/home_screen.dart';
import 'package:happiness_client/signup/bloc/signup_bloc.dart';
import 'package:happiness_client/signup/signup_provider.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "LoginScreen";

  const LoginScreen({Key? key}) : super(key: key);

  final String title = '우리 이제\n아껴서\n잘 살아봐요';
  final String name = 'Naming';

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listenWhen: (pre, next) => pre is SignupLoading,
      listener: (context, state) {
        switch (state.runtimeType) {
          case SignupSuccess:
            Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
            break;
          case SignupError:
            AlertDialog(
              title: Text((state as SignupError).message),
            );
            break;
        }
      },
      child: CupertinoPageScaffold(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      context.read<SignupBloc>().add(RequestSignup(signupProvider: SignupProvider.KAKAO)),
                  child: const Text('kakao')),
              ElevatedButton(
                  onPressed: () =>
                      context.read<SignupBloc>().add(RequestSignup(signupProvider: SignupProvider.NAVER)),
                  child: const Text('naver')),
              ElevatedButton(
                  onPressed: () =>
                      context.read<SignupBloc>().add(RequestSignup(signupProvider: SignupProvider.GOOGLE)),
                  child: const Text('google')),
              ElevatedButton(
                  onPressed: () =>
                      context.read<SignupBloc>().add(RequestSignup(signupProvider: SignupProvider.APPLE)),
                  child: const Text('apple')),
            ],
          ),
        ),
      ),
    );

    /*
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onPressed, child: const Text('kakao'));
            Text(title),
            Text(name),
          ],
        ),
      ),
    );
     */
  }
}

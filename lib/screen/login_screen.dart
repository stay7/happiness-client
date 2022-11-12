import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "LoginScreen";

  const LoginScreen({Key? key}) : super(key: key);

  final String title = '우리 이제\n아껴서\n잘 살아봐요';
  final String name = 'Naming';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Text(name),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:happiness_client/controller/device_info_controller.dart';
import 'package:happiness_client/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  final String title = '우리 이제\n아껴서\n잘 살아봐요';
  final String name = 'Naming';

  @override
  Widget build(BuildContext context) {
    final LoginController c = Get.put(LoginController());
    final InitInfoController d = Get.put(InitInfoController());
    d.initDeviceInfo(context);

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Text(name),
            Row(
              children: [GoogleLoginButton(), FacebookLoginButton(), KakaoLoginButton(), TextButton(onPressed: c.signOutKakao, child: const Text("logout kakao"))],
            )
          ],
        ),
      ),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: c.loginGoogle, child: const Text(LoginController.google));
  }
}

class FacebookLoginButton extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: c.loginFacebook, child: const Text(LoginController.facebook));
  }
}

class FacebookLogoutButton extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: c.logoutFacebook, child: const Text("facebook logout"));
  }
}

class KakaoLoginButton extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: c.loginKakao, child: const Text(LoginController.kakao));
  }
}

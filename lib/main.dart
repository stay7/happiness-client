import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:happiness_client/happiness_app.dart';
import 'package:happiness_client/happiness_config.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'firebase_options.dart';

// https://firebase.google.com/docs/auth/flutter/start
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // flutter가 native code를 호출할 떄 사용한다
  await initFirebase();
  KakaoSdk.init(nativeAppKey: "37abea6b6479d6584676fcb3cd7b6e31");
  await HappinessConfig.initialize();

  runApp(const HappinessApp());
}

Future initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}

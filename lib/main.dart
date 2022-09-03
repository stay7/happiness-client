import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/route_manager.dart';
import 'package:happiness_client/screen/login_screen.dart';
import 'firebase_options.dart';

// https://firebase.google.com/docs/auth/flutter/start
void main() {
  WidgetsFlutterBinding.ensureInitialized();  // flutter가 native code를 호출할 떄 사용한다
  initFirebase();
  runApp(const GetCupertinoApp(home: LoginScreen()));
}

void initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}
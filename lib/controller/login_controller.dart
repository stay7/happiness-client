import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

/*
firebase documentation : https://firebase.google.com/docs/auth/flutter/federated-auth
 */

class LoginController extends GetxController {
  static const String google = "Google";
  static const String kakao = "Kakao";
  static const String facebook = "Facebook";
  static const String naver = "Naver";

  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);

  Future<UserCredential> loginGoogle() async {
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    final credential =
        GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    debugPrint("$googleUser, $googleAuth, $credential");
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

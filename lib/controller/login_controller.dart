import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
  final FacebookAuth _facebookSignIn = FacebookAuth.instance;

  Future<UserCredential> loginGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    final credential =
        GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
    debugPrint("userCredential = ${userCredential.user}");
    //TODO:user. uid, email, emailVerified
    return userCredential;
  }

  /**
    userData : {email: sangmin95@gmail.com, id: 5189979114391071, picture: {data: {is_silhouette: false, height: 200, url: https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=5189979114391071&width=200&ext=1664813287&hash=AeTaDbZfpjSTUwabFLI, width: 200}}, name: 서상민}
   */
  void loginFacebook() async {
    final LoginResult loginResult = await _facebookSignIn.login(permissions: ['email', 'public_profile']);
    if (loginResult.status == LoginStatus.success) {
      final OAuthCredential credential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
      UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      debugPrint(userCredential.toString());
    } else {
      print(loginResult.status);
      print(loginResult.message);
    }
  }

  void logoutFacebook() {
    _facebookSignIn.logOut();
  }
}

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:happiness_client/api/signup_client.dart';
import 'package:happiness_client/bloc/signup_form.dart';
import 'package:happiness_client/screen/home_screen.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

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
  late final SignupClient _signupClient;
  late final SharedPreferences sp;

  @override
  void onInit() async {
    super.onInit();
    sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');
    final refreshToken = sp.getString('refreshToken');

    developer.log("accessToken=$accessToken, refreshToken=$refreshToken");

    if (accessToken != null && refreshToken != null) {
      developer.log('accessToken, refreshToken exist');
      Get.to(() => const HomeScreen());
    }

    final Dio dio = Dio();
    dio.options.headers["Content-Type"] = "application/json";
    _signupClient = SignupClient(dio);
  }

  void loginGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    final credential =
        GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    var userCredential = await _firebaseAuth.signInWithCredential(credential);
    _requestSignUpByCredential(ProviderType.google, userCredential);
  }

  /**
      userData : {email: sangmin95@gmail.com, id: 5189979114391071, picture: {data: {is_silhouette: false, height: 200, url: https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=5189979114391071&width=200&ext=1664813287&hash=AeTaDbZfpjSTUwabFLI, width: 200}}, name: 서상민}
   */
  void loginFacebook() async {
    final loginResult = await _facebookSignIn.login(permissions: ['email', 'public_profile']);
    if (loginResult.status == LoginStatus.success) {
      final OAuthCredential credential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
      var userCredential = await _firebaseAuth.signInWithCredential(credential);
      _requestSignUpByCredential(ProviderType.facebook, userCredential);
    } else {
      print(loginResult.status);
      print(loginResult.message);
    }
  }

  void loginKakao() async {
    final serviceTerms = ['email'];

    try {
      if (await isKakaoTalkInstalled()) {
        OAuthToken token = await UserApi.instance.loginWithKakaoAccount(serviceTerms: serviceTerms);
        print("카카오톡으로 로그인 성공 ${token.accessToken}");
      } else {
        var oAuthToken = await UserApi.instance.loginWithKakaoAccount(serviceTerms: serviceTerms);

        print('카카오 계정으로 로그인 성공 $oAuthToken');
      }
      final user = await UserApi.instance.me();
      if (user.kakaoAccount!.emailNeedsAgreement == true) {
        await UserApi.instance.loginWithNewScopes(['account_email']);
      }

      _requestSignUp(
          ProviderType.kakao, user.id.toString(), user.kakaoAccount!.email!, user.kakaoAccount!.isEmailVerified!);
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error}');
    }
  }

  void signOutKakao() async {
    await UserApi.instance.unlink();
  }

  void logoutFacebook() {
    _facebookSignIn.logOut();
  }

  Future _requestSignUp(ProviderType providerType, String providerId, String email, bool emailVerified) async {
    final form = SignupForm(
        providerType: providerType,
        email: email,
        providerId: providerId,
        emailVerified: emailVerified,
        deviceUuid: sp.getString('deviceUuid')!,
        lang: sp.getString('lang')!);

    _signup(form);
  }

  Future _requestSignUpByCredential(ProviderType providerType, UserCredential userCredential) async {
    final user = userCredential.user;
    if (user == null || user.email == null) throw Exception("email not exist");

    final form = SignupForm(
        providerType: providerType,
        email: user.email!,
        providerId: providerType.name,
        emailVerified: user.emailVerified,
        deviceUuid: sp.getString('deviceUuid')!,
        lang: sp.getString('lang')!);
    _signup(form);
  }

  Future _signup(SignupForm form) async {
    final tokenResponse = await _signupClient.signup(form);
    if (tokenResponse.status == 0) {
      sp.setString('accessToken', tokenResponse.accessToken);
      sp.setString('refreshToken', tokenResponse.refreshToken);
    }
  }
}

enum ProviderType { kakao, naver, google, facebook, apple }

import 'package:happiness_client/api/HttpService.dart';
import 'package:http/src/response.dart';

import '../controller/login_controller.dart';

class LoginService {
  static final LoginService _instance = LoginService._internal();

  factory LoginService() {
    return _instance;
  }

  LoginService._internal();

  Future<Response> signUp(
      ProviderType providerType, String email, String uid, bool emailVerified, String deviceUuid, String lang) {
    final httpService = HttpService();
    final body = <String, String>{
      'email': email,
      'providerId': uid,
      'emailVerified': emailVerified.toString(),
      'deviceUuid': deviceUuid,
      'lang': lang
    };
    return httpService.doPost("/oauth/signup/${providerType.name}", body);
  }
}

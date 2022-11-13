import 'dart:async';

import 'package:happiness_client/datasource/local/auth_preference.dart';
import 'package:happiness_client/datasource/local/device_preference.dart';
import 'package:happiness_client/signup/signup_command.dart';
import 'package:happiness_client/signup/signup_form.dart';
import 'package:happiness_client/datasource/remote/retrofit/signup_client.dart';
import 'package:happiness_client/type/refresh_form.dart';
import 'package:happiness_client/type/token.dart';

abstract class AuthRepository {
  FutureOr<void> signup(SignupCommand command);

  Future<Token> refresh(RefreshForm form);

  bool hasToken();
}

class AuthRepositoryImpl extends AuthRepository {
  final SignupClient signupClient;
  final DevicePreference devicePreference;
  final AuthPreference authPreference;

  AuthRepositoryImpl({required this.signupClient, required this.devicePreference, required this.authPreference});

  @override
  Future<Token> refresh(RefreshForm form) => signupClient.refresh(form).then((value) {
        return value.data.data;
      });

  @override
  FutureOr<void> signup(SignupCommand command) async {
    final form = SignupForm(
        signupProvider: command.signupProvider,
        providerId: command.providerId,
        email: command.email,
        emailVerified: command.emailVerified,
        deviceUuid: devicePreference.deviceUuid());

    final token = await signupClient.signup(command.signupProvider.name, form).then((value) => value.data.data);
    authPreference.setToken(token);
  }

  @override
  bool hasToken() => (authPreference.accesToken() != null) && (authPreference.refreshToken() != null);
}

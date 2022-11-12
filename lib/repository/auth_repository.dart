import 'package:happiness_client/api/type/refresh_form.dart';
import 'package:happiness_client/datasource/local/device_preference.dart';
import 'package:happiness_client/signup/signup_command.dart';
import 'package:happiness_client/signup/signup_form.dart';
import 'package:happiness_client/api/type/token.dart';
import 'package:happiness_client/datasource/remote/retrofit/signup_client.dart';

abstract class AuthRepository {
  Future<Token> signup(SignupCommand command);

  Future<Token> refresh(RefreshForm form);
}

class AuthRepositoryImpl extends AuthRepository {
  final SignupClient signupClient;
  final DevicePreference devicePreference;

  AuthRepositoryImpl({required this.signupClient, required this.devicePreference});

  @override
  Future<Token> refresh(RefreshForm form) => signupClient.refresh(form).then((value) {
        return value.data.data;
      });

  @override
  Future<Token> signup(SignupCommand command) {
    final form = SignupForm(
        signupProvider: command.signupProvider,
        providerId: command.providerId,
        email: command.email,
        emailVerified: command.emailVerified,
        deviceUuid: devicePreference.deviceUuid());

    return signupClient.signup(command.signupProvider.name, form).then((value) => value.data.data);
  }
}

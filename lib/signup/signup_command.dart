import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happiness_client/signup/signup_provider.dart';

part 'signup_command.freezed.dart';

@freezed
class SignupCommand with _$SignupCommand {
  const factory SignupCommand({
    required SignupProvider signupProvider,
    required String email,
    required String providerId,
    required bool emailVerified,
  }) = _SignupCommand;
}

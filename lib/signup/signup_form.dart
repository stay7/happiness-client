import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happiness_client/signup/signup_provider.dart';

part 'signup_form.freezed.dart';

part 'signup_form.g.dart';

@freezed
class SignupForm with _$SignupForm {
  const factory SignupForm(
      {required SignupProvider signupProvider,
      required String email,
      required String providerId,
      required bool emailVerified,
      required String deviceUuid}) = _SignupForm;

  factory SignupForm.fromJson(Map<String, dynamic> json) => _$SignupFormFromJson(json);
}

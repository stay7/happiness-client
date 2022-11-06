import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_form.freezed.dart';

@freezed
class SignupForm with _$SignupForm {
  const factory SignupForm(
      {required String email,
      required String providerId,
      required bool emailVerified,
      required String deviceUuid,
      required String lang}) = _SignupForm;
}

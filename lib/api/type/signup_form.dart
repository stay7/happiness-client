import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_form.freezed.dart';
part 'signup_form.g.dart';

@freezed
class SignupForm with _$SignupForm {
  const factory SignupForm(
      {required String email,
      required String providerId,
      required bool emailVerified,
      required String deviceUuid,
      required String lang}) = _SignupForm;

  factory SignupForm.fromJson(Map<String, dynamic> json) => _$SignupFormFromJson(json);
}

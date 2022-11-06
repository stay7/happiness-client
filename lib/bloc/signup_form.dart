import 'package:happiness_client/controller/login_controller.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signup_form.g.dart';

@JsonSerializable()
class SignupForm {
  final ProviderType providerType;
  final String email;
  final String providerId;
  final bool emailVerified;
  final String deviceUuid;
  final String lang;

  SignupForm({
    required this.providerType,
    required this.email,
    required this.providerId,
    required this.emailVerified,
    required this.deviceUuid,
    required this.lang});

  factory SignupForm.fromJson(Map<String, dynamic> json) => _$SignupFormFromJson(json);

  Map<String, dynamic> toJson() => _$SignupFormToJson(this);
}

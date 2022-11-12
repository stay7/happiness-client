// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupForm _$$_SignupFormFromJson(Map<String, dynamic> json) =>
    _$_SignupForm(
      signupProvider:
          $enumDecode(_$SignupProviderEnumMap, json['signupProvider']),
      email: json['email'] as String,
      providerId: json['providerId'] as String,
      emailVerified: json['emailVerified'] as bool,
      deviceUuid: json['deviceUuid'] as String,
    );

Map<String, dynamic> _$$_SignupFormToJson(_$_SignupForm instance) =>
    <String, dynamic>{
      'signupProvider': _$SignupProviderEnumMap[instance.signupProvider]!,
      'email': instance.email,
      'providerId': instance.providerId,
      'emailVerified': instance.emailVerified,
      'deviceUuid': instance.deviceUuid,
    };

const _$SignupProviderEnumMap = {
  SignupProvider.GOOGLE: 'GOOGLE',
  SignupProvider.KAKAO: 'KAKAO',
  SignupProvider.APPLE: 'APPLE',
  SignupProvider.NAVER: 'NAVER',
};

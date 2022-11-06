// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupForm _$SignupFormFromJson(Map<String, dynamic> json) => SignupForm(
      providerType: $enumDecode(_$ProviderTypeEnumMap, json['providerType']),
      email: json['email'] as String,
      providerId: json['providerId'] as String,
      emailVerified: json['emailVerified'] as bool,
      deviceUuid: json['deviceUuid'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$SignupFormToJson(SignupForm instance) =>
    <String, dynamic>{
      'providerType': _$ProviderTypeEnumMap[instance.providerType]!,
      'email': instance.email,
      'providerId': instance.providerId,
      'emailVerified': instance.emailVerified,
      'deviceUuid': instance.deviceUuid,
      'lang': instance.lang,
    };

const _$ProviderTypeEnumMap = {
  ProviderType.kakao: 'kakao',
  ProviderType.naver: 'naver',
  ProviderType.google: 'google',
  ProviderType.facebook: 'facebook',
  ProviderType.apple: 'apple',
};

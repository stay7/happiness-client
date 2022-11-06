// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupForm _$$_SignupFormFromJson(Map<String, dynamic> json) =>
    _$_SignupForm(
      email: json['email'] as String,
      providerId: json['providerId'] as String,
      emailVerified: json['emailVerified'] as bool,
      deviceUuid: json['deviceUuid'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$$_SignupFormToJson(_$_SignupForm instance) =>
    <String, dynamic>{
      'email': instance.email,
      'providerId': instance.providerId,
      'emailVerified': instance.emailVerified,
      'deviceUuid': instance.deviceUuid,
      'lang': instance.lang,
    };

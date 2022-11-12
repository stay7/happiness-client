// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupForm _$SignupFormFromJson(Map<String, dynamic> json) {
  return _SignupForm.fromJson(json);
}

/// @nodoc
mixin _$SignupForm {
  SignupProvider get signupProvider => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String get deviceUuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupFormCopyWith<SignupForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormCopyWith<$Res> {
  factory $SignupFormCopyWith(
          SignupForm value, $Res Function(SignupForm) then) =
      _$SignupFormCopyWithImpl<$Res, SignupForm>;
  @useResult
  $Res call(
      {SignupProvider signupProvider,
      String email,
      String providerId,
      bool emailVerified,
      String deviceUuid});
}

/// @nodoc
class _$SignupFormCopyWithImpl<$Res, $Val extends SignupForm>
    implements $SignupFormCopyWith<$Res> {
  _$SignupFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupProvider = null,
    Object? email = null,
    Object? providerId = null,
    Object? emailVerified = null,
    Object? deviceUuid = null,
  }) {
    return _then(_value.copyWith(
      signupProvider: null == signupProvider
          ? _value.signupProvider
          : signupProvider // ignore: cast_nullable_to_non_nullable
              as SignupProvider,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupFormCopyWith<$Res>
    implements $SignupFormCopyWith<$Res> {
  factory _$$_SignupFormCopyWith(
          _$_SignupForm value, $Res Function(_$_SignupForm) then) =
      __$$_SignupFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignupProvider signupProvider,
      String email,
      String providerId,
      bool emailVerified,
      String deviceUuid});
}

/// @nodoc
class __$$_SignupFormCopyWithImpl<$Res>
    extends _$SignupFormCopyWithImpl<$Res, _$_SignupForm>
    implements _$$_SignupFormCopyWith<$Res> {
  __$$_SignupFormCopyWithImpl(
      _$_SignupForm _value, $Res Function(_$_SignupForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupProvider = null,
    Object? email = null,
    Object? providerId = null,
    Object? emailVerified = null,
    Object? deviceUuid = null,
  }) {
    return _then(_$_SignupForm(
      signupProvider: null == signupProvider
          ? _value.signupProvider
          : signupProvider // ignore: cast_nullable_to_non_nullable
              as SignupProvider,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupForm implements _SignupForm {
  const _$_SignupForm(
      {required this.signupProvider,
      required this.email,
      required this.providerId,
      required this.emailVerified,
      required this.deviceUuid});

  factory _$_SignupForm.fromJson(Map<String, dynamic> json) =>
      _$$_SignupFormFromJson(json);

  @override
  final SignupProvider signupProvider;
  @override
  final String email;
  @override
  final String providerId;
  @override
  final bool emailVerified;
  @override
  final String deviceUuid;

  @override
  String toString() {
    return 'SignupForm(signupProvider: $signupProvider, email: $email, providerId: $providerId, emailVerified: $emailVerified, deviceUuid: $deviceUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupForm &&
            (identical(other.signupProvider, signupProvider) ||
                other.signupProvider == signupProvider) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, signupProvider, email,
      providerId, emailVerified, deviceUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupFormCopyWith<_$_SignupForm> get copyWith =>
      __$$_SignupFormCopyWithImpl<_$_SignupForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupFormToJson(
      this,
    );
  }
}

abstract class _SignupForm implements SignupForm {
  const factory _SignupForm(
      {required final SignupProvider signupProvider,
      required final String email,
      required final String providerId,
      required final bool emailVerified,
      required final String deviceUuid}) = _$_SignupForm;

  factory _SignupForm.fromJson(Map<String, dynamic> json) =
      _$_SignupForm.fromJson;

  @override
  SignupProvider get signupProvider;
  @override
  String get email;
  @override
  String get providerId;
  @override
  bool get emailVerified;
  @override
  String get deviceUuid;
  @override
  @JsonKey(ignore: true)
  _$$_SignupFormCopyWith<_$_SignupForm> get copyWith =>
      throw _privateConstructorUsedError;
}

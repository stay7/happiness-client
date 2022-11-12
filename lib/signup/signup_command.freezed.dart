// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupCommand {
  SignupProvider get signupProvider => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupCommandCopyWith<SignupCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupCommandCopyWith<$Res> {
  factory $SignupCommandCopyWith(
          SignupCommand value, $Res Function(SignupCommand) then) =
      _$SignupCommandCopyWithImpl<$Res, SignupCommand>;
  @useResult
  $Res call(
      {SignupProvider signupProvider,
      String email,
      String providerId,
      bool emailVerified});
}

/// @nodoc
class _$SignupCommandCopyWithImpl<$Res, $Val extends SignupCommand>
    implements $SignupCommandCopyWith<$Res> {
  _$SignupCommandCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupCommandCopyWith<$Res>
    implements $SignupCommandCopyWith<$Res> {
  factory _$$_SignupCommandCopyWith(
          _$_SignupCommand value, $Res Function(_$_SignupCommand) then) =
      __$$_SignupCommandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignupProvider signupProvider,
      String email,
      String providerId,
      bool emailVerified});
}

/// @nodoc
class __$$_SignupCommandCopyWithImpl<$Res>
    extends _$SignupCommandCopyWithImpl<$Res, _$_SignupCommand>
    implements _$$_SignupCommandCopyWith<$Res> {
  __$$_SignupCommandCopyWithImpl(
      _$_SignupCommand _value, $Res Function(_$_SignupCommand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupProvider = null,
    Object? email = null,
    Object? providerId = null,
    Object? emailVerified = null,
  }) {
    return _then(_$_SignupCommand(
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
    ));
  }
}

/// @nodoc

class _$_SignupCommand implements _SignupCommand {
  const _$_SignupCommand(
      {required this.signupProvider,
      required this.email,
      required this.providerId,
      required this.emailVerified});

  @override
  final SignupProvider signupProvider;
  @override
  final String email;
  @override
  final String providerId;
  @override
  final bool emailVerified;

  @override
  String toString() {
    return 'SignupCommand(signupProvider: $signupProvider, email: $email, providerId: $providerId, emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupCommand &&
            (identical(other.signupProvider, signupProvider) ||
                other.signupProvider == signupProvider) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, signupProvider, email, providerId, emailVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupCommandCopyWith<_$_SignupCommand> get copyWith =>
      __$$_SignupCommandCopyWithImpl<_$_SignupCommand>(this, _$identity);
}

abstract class _SignupCommand implements SignupCommand {
  const factory _SignupCommand(
      {required final SignupProvider signupProvider,
      required final String email,
      required final String providerId,
      required final bool emailVerified}) = _$_SignupCommand;

  @override
  SignupProvider get signupProvider;
  @override
  String get email;
  @override
  String get providerId;
  @override
  bool get emailVerified;
  @override
  @JsonKey(ignore: true)
  _$$_SignupCommandCopyWith<_$_SignupCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

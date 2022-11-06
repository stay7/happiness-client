// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refresh_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RefreshForm {
  String get refreshToken => throw _privateConstructorUsedError;
  String get deviceUuid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefreshFormCopyWith<RefreshForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshFormCopyWith<$Res> {
  factory $RefreshFormCopyWith(
          RefreshForm value, $Res Function(RefreshForm) then) =
      _$RefreshFormCopyWithImpl<$Res, RefreshForm>;
  @useResult
  $Res call({String refreshToken, String deviceUuid});
}

/// @nodoc
class _$RefreshFormCopyWithImpl<$Res, $Val extends RefreshForm>
    implements $RefreshFormCopyWith<$Res> {
  _$RefreshFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? deviceUuid = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshFormCopyWith<$Res>
    implements $RefreshFormCopyWith<$Res> {
  factory _$$_RefreshFormCopyWith(
          _$_RefreshForm value, $Res Function(_$_RefreshForm) then) =
      __$$_RefreshFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken, String deviceUuid});
}

/// @nodoc
class __$$_RefreshFormCopyWithImpl<$Res>
    extends _$RefreshFormCopyWithImpl<$Res, _$_RefreshForm>
    implements _$$_RefreshFormCopyWith<$Res> {
  __$$_RefreshFormCopyWithImpl(
      _$_RefreshForm _value, $Res Function(_$_RefreshForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? deviceUuid = null,
  }) {
    return _then(_$_RefreshForm(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshForm implements _RefreshForm {
  const _$_RefreshForm({required this.refreshToken, required this.deviceUuid});

  @override
  final String refreshToken;
  @override
  final String deviceUuid;

  @override
  String toString() {
    return 'RefreshForm(refreshToken: $refreshToken, deviceUuid: $deviceUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshForm &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, deviceUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshFormCopyWith<_$_RefreshForm> get copyWith =>
      __$$_RefreshFormCopyWithImpl<_$_RefreshForm>(this, _$identity);
}

abstract class _RefreshForm implements RefreshForm {
  const factory _RefreshForm(
      {required final String refreshToken,
      required final String deviceUuid}) = _$_RefreshForm;

  @override
  String get refreshToken;
  @override
  String get deviceUuid;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshFormCopyWith<_$_RefreshForm> get copyWith =>
      throw _privateConstructorUsedError;
}

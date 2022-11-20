// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Spending {
  int get id => throw _privateConstructorUsedError;
  String get usage => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpendingCopyWith<Spending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingCopyWith<$Res> {
  factory $SpendingCopyWith(Spending value, $Res Function(Spending) then) =
      _$SpendingCopyWithImpl<$Res, Spending>;
  @useResult
  $Res call({int id, String usage, String date, int amount, String currency});
}

/// @nodoc
class _$SpendingCopyWithImpl<$Res, $Val extends Spending>
    implements $SpendingCopyWith<$Res> {
  _$SpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usage = null,
    Object? date = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpendingCopyWith<$Res> implements $SpendingCopyWith<$Res> {
  factory _$$_SpendingCopyWith(
          _$_Spending value, $Res Function(_$_Spending) then) =
      __$$_SpendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String usage, String date, int amount, String currency});
}

/// @nodoc
class __$$_SpendingCopyWithImpl<$Res>
    extends _$SpendingCopyWithImpl<$Res, _$_Spending>
    implements _$$_SpendingCopyWith<$Res> {
  __$$_SpendingCopyWithImpl(
      _$_Spending _value, $Res Function(_$_Spending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usage = null,
    Object? date = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$_Spending(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Spending implements _Spending {
  const _$_Spending(
      {required this.id,
      required this.usage,
      required this.date,
      required this.amount,
      required this.currency});

  @override
  final int id;
  @override
  final String usage;
  @override
  final String date;
  @override
  final int amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'Spending(id: $id, usage: $usage, date: $date, amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spending &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, usage, date, amount, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      __$$_SpendingCopyWithImpl<_$_Spending>(this, _$identity);
}

abstract class _Spending implements Spending {
  const factory _Spending(
      {required final int id,
      required final String usage,
      required final String date,
      required final int amount,
      required final String currency}) = _$_Spending;

  @override
  int get id;
  @override
  String get usage;
  @override
  String get date;
  @override
  int get amount;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      throw _privateConstructorUsedError;
}

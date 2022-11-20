import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending.freezed.dart';

@freezed
class Spending with _$Spending {
  const factory Spending(
      {required int id,
      required String usage,
      required String date,
      required int amount,
      required String currency}) = _Spending;
}

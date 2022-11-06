import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status({required int code}) = _Status;
}

enum StatusAction {
  success,
  error,
}

final statusToAction = {const Status(code: 0): StatusAction.success, const Status(code: -500): StatusAction.error};

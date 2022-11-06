import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_form.freezed.dart';

@freezed
class RefreshForm with _$RefreshForm {
  const factory RefreshForm({required String refreshToken, required String deviceUuid}) = _RefreshForm;
}

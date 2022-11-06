import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';

part 'token_response.g.dart';

@freezed
class TokenResponse with _$TokenResponse {
  const factory TokenResponse({required int status, required String accessToken, required String refreshToken}) =
      _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
}

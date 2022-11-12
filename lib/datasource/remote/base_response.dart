import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final T data;
  final int status;
  final String? message;

  BaseResponse({
    required this.data,
    required this.status,
    this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}

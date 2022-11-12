// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SignupClient implements SignupClient {
  _SignupClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://dev.happiness-lsm.xyz';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<BaseResponse<Token>>> signup(
    provider,
    form,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(form.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<BaseResponse<Token>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/oauth/signup/${provider}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<Token>.fromJson(
      _result.data!,
      (json) => Token.fromJson(json as Map<String, dynamic>),
    );
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponse<Token>>> refresh(form) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = form;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<BaseResponse<Token>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/oauth/refresh',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<Token>.fromJson(
      _result.data!,
      (json) => Token.fromJson(json as Map<String, dynamic>),
    );
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

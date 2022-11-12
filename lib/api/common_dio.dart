import 'package:dio/dio.dart';
import 'package:happiness_client/datasource/remote/retrofit/signup_client.dart';
import 'package:happiness_client/api/type/refresh_form.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class CommonDio {
  static Dio? _instance;

  static Dio getInstance() {
    _instance ??= createDio();
    return _instance!;
  }

  static Dio createDio() {
    var dio = Dio();
    dio.interceptors.clear();
    dio.interceptors.add(AccessTokenInterceptor());
    return dio;
  }
}

class AccessTokenInterceptor extends InterceptorsWrapper {
  late final SharedPreferences sp;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    sp = await SharedPreferences.getInstance();
    options.headers['Authorization'] = sp.getString('accessToken');

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final int statusCode = response.data['status'];
    final String? message = response.data['message'];
    //
    // if (statusCode == 0) handler
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      var dio = Dio();
      dio.interceptors.clear();
      dio.interceptors.add(RefreshInterceptor());
      final client = SignupClient(dio);
      final form = RefreshForm(refreshToken: sp.getString('refreshToken')!, deviceUuid: sp.getString('deviceUuid')!);
      final response = await client.refresh(form);
      sp.setString('accessToken', response.data.data.accessToken);
      sp.setString('refreshToken', response.data.data.refreshToken);

      err.requestOptions.headers['Authorization'] = sp.getString('accessToken')!;

      final recallResponse = await dio.request(err.requestOptions.path,
          options: Options(method: err.requestOptions.method, headers: err.requestOptions.headers),
          cancelToken: err.requestOptions.cancelToken,
          onReceiveProgress: err.requestOptions.onReceiveProgress,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters);

      handler.resolve(recallResponse);
    } else {
      developer.log("예상치 못한 에러 $err");
    }
  }
}

class RefreshInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // final SharedPreferences sp = await SharedPreferences.getInstance();
    //TODO kickout 객체 만들기
    // sp.remove('accessToken');
    // sp.remove('refreshToken');
    // Get.to(const LoginScreen());
  }
}

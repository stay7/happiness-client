import 'package:dio/dio.dart';
import 'package:happiness_client/api/type/refresh_form.dart';
import 'package:happiness_client/signup/signup_form.dart';
import 'package:happiness_client/api/type/token.dart';
import 'package:happiness_client/datasource/remote/base_response.dart';
import 'package:happiness_client/happiness_config.dart';
import 'package:retrofit/retrofit.dart';

part 'signup_client.g.dart';

@RestApi(baseUrl: HappinessConfig.baseUrl)
abstract class SignupClient {
  factory SignupClient(Dio dio, {String baseUrl}) = _SignupClient;

  @POST("/oauth/signup/{provider}")
  Future<HttpResponse<BaseResponse<Token>>> signup(@Path() String provider, @Body() SignupForm form);

  @POST("/oauth/refresh")
  Future<HttpResponse<BaseResponse<Token>>> refresh(@Body() RefreshForm form);
}

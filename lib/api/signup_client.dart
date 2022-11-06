import 'package:dio/dio.dart';
import 'package:happiness_client/api/type/refresh_form.dart';
import 'package:happiness_client/api/type/signup_form.dart';
import 'package:happiness_client/api/type/token_response.dart';
import 'package:retrofit/http.dart';

part 'signup_client.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class SignupClient {
  factory SignupClient(Dio dio, {String baseUrl}) = _SignupClient;

  @POST("/oauth/signup/{provider}")
  Future<TokenResponse> signup(@Path() String provider, @Body() SignupForm form);

  @POST("/oauth/refresh")
  Future<TokenResponse> refresh(@Body() RefreshForm form);
}

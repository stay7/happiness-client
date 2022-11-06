import 'package:dio/dio.dart';
import 'package:happiness_client/bloc/signup_form.dart';
import 'package:happiness_client/bloc/token_response.dart';
import 'package:retrofit/http.dart';

part 'signup_client.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class SignupClient {
  factory SignupClient(Dio dio, {String baseUrl}) = _SignupClient;

  @POST("/oauth/signup/{provider}")
  Future<TokenResponse> signup(@Body() SignupForm form);
}

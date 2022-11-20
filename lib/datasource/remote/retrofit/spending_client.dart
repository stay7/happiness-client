import 'package:dio/dio.dart';
import 'package:happiness_client/happiness_config.dart';
import 'package:retrofit/http.dart';

part 'spending_client.g.dart';

@RestApi(baseUrl: HappinessConfig.baseUrl)
abstract class SpendingClient {
  factory SpendingClient(Dio dio, {String baseUrl}) = _SpendingClient;

  // @POST("")
  // Future<HttpResponse<BaseResponse<>>> spendingClient();
}

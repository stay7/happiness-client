import 'package:http/http.dart';

class HttpService {
  static const String localhost = "http://localhost:8080";

  Future<Response> doPost(String url, Object? body) async {
    final endpoint = Uri.parse("$localhost$url");
    print(endpoint);
    final header = {"Content-Type": "application/json"};

    return post(endpoint, headers: header, body: body);
  }
}

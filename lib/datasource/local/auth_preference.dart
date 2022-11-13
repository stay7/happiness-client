import 'package:happiness_client/api/type/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthPreference {
  static const String keyAccessToken = "accessToken";
  static const String keyRefreshToken = "refreshToken";

  final SharedPreferences sp;

  AuthPreference({required this.sp});

  String? accesToken() => sp.getString(keyAccessToken);

  String? refreshToken() => sp.getString(keyRefreshToken);

  void setToken(Token token) {
    sp.setString(keyAccessToken, token.accessToken);
    sp.setString(keyRefreshToken, token.refreshToken);
  }
}

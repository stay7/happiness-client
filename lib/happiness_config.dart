import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HappinessConfig {
  static const baseUrl = 'http://dev.happiness-lsm.xyz';

  static late SharedPreferences sp;

  static Future<void> initialize() async {
    KakaoSdk.init(nativeAppKey: "37abea6b6479d6584676fcb3cd7b6e31");
    sp = await SharedPreferences.getInstance();
    await initializeDateFormatting();
    Intl.defaultLocale = 'ko_KR';
  }
}

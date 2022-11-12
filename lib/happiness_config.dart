import 'package:shared_preferences/shared_preferences.dart';

abstract class HappinessConfig {
  static const baseUrl = 'http://dev.happiness-lsm.xyz';

  static late SharedPreferences sp;

  static Future<void> initialize() async {
    sp = await SharedPreferences.getInstance();
  }
}

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DevicePreference {
  static String keyOS = "os";
  static String keyModel = "model";
  static String keyDeviceUuid = "deviceUuid";
  static String keyOsVersion = "osVersion";

  final SharedPreferences sp;

  DevicePreference({required this.sp});

  void init() async {
    late final String os;
    late final String model;
    late final String deviceUuid;
    late final String osVersion;

    if (Platform.isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      os = OsValue.android.name;
      model = info.model;
      deviceUuid = info.id;
      osVersion = info.version.baseOS!;
    } else {
      final info = await DeviceInfoPlugin().iosInfo;
      os = OsValue.ios.name;
      model = info.model!;
      deviceUuid = info.identifierForVendor!;
      osVersion = info.systemVersion!;
    }

    sp.setString(keyOS, os);
    sp.setString(keyModel, model);
    sp.setString(keyDeviceUuid, deviceUuid);
    sp.setString(keyOsVersion, osVersion);
  }

  String os() => sp.getString(keyOS)!;

  String deviceUuid() => sp.getString(keyDeviceUuid)!;

  String model() => sp.getString(keyModel)!;

  String osVersion() => sp.getString(keyOsVersion)!;
}

enum OsValue { ios, android }

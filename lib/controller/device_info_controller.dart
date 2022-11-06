import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class InitInfoController extends GetxController {
  late final SharedPreferences sp;
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  @override
  void onInit() async {
    super.onInit();
    sp = await SharedPreferences.getInstance();
  }

  void initDeviceInfo(BuildContext context) async {
    developer.log('initDeviceInfo');
    final locale = Localizations.localeOf(context);

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfoPlugin.androidInfo;
      _saveDeviceInfo('android', androidInfo.model, androidInfo.id, androidInfo.version.baseOS, locale.languageCode);
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfoPlugin.iosInfo;
      _saveDeviceInfo('ios', iosInfo.name, iosInfo.identifierForVendor, iosInfo.systemVersion, locale.languageCode);
    }
  }

  void _saveDeviceInfo(String os, String? model, String? deviceUuid, String? version, String lang) {
    developer.log("$os, $model, $deviceUuid, $version, $lang");

    if (model != null) {
      sp.setString('model', model);
    }
    if (deviceUuid != null) {
      sp.setString('deviceUuid', deviceUuid);
    }
    if (version != null) {
      sp.setString('version', version);
    }
    sp.setString('os', os);
    sp.setString('lang', lang);
  }
}

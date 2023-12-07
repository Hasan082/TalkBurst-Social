import 'dart:async';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:talkbrust/views/auth/welcome.dart';
import 'package:talkbrust/views/dashboard_page.dart';
import 'package:talkbrust/views/home/home_page.dart';

class SplashController extends GetxController {
  String versionNumber = '';
  late Timer delayedTimer;

  @override
  void onInit() {
    super.onInit();
    getVersionNumber();
    goToNextScreen();
  }

  Future<void> getVersionNumber() async {
    final info = await PackageInfo.fromPlatform();
    versionNumber = info.version;
    update();
  }

  void goToNextScreen() {
    delayedTimer = Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const DashboardScreen());
    });
  }
}

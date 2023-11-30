import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:talkbrust/views/auth/welcome.dart';




class SplashController extends GetxController {
  String versionNumber = '';

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
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Get.offAll(() => const WelcomeScreen());
    });
  }


}
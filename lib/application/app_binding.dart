import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}

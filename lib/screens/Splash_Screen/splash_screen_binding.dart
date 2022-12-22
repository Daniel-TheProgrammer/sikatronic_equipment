

import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Splash_Screen/splash_screen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}

import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen03/screen03_controller.dart';

class Screen03Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen03Controller>(() => Screen03Controller());
  }
}
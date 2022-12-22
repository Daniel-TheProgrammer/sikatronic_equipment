
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02_controller.dart';


class Screen02Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen02Controller>(() => Screen02Controller());
  }
}
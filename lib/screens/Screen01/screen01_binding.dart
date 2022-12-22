import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01_controller.dart';


class Screen01Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen01Controller>(() => Screen01Controller());
  }
}
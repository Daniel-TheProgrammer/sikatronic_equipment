import 'package:get/get.dart';

import 'screen06_controller.dart';

class Screen06Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen06Controller>(() => Screen06Controller());
  }
}

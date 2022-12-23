import 'package:get/get.dart';

import 'screen05_controller.dart';

class Screen04Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen05Controller>(() => Screen05Controller());
  }
}

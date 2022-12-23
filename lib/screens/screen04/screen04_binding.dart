import 'package:get/get.dart';

import 'screen04_controller.dart';

class Screen04Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen04Controller>(() => Screen04Controller());
  }
}

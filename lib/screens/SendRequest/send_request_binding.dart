import 'package:get/get.dart';

import 'package:sikatronics_equipment/screens/SendRequest/send_request_controller.dart';

class SendRequestBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendRequestController>(() => SendRequestController());
  }
}
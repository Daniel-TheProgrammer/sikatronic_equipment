import 'package:flutter/Material.dart' show debugPrint;
import 'package:get/get.dart' show GetxController;

class Screen01Controller extends GetxController {
   @override
  void onInit() {
    debugPrint('Init State has Called');
    super.onInit();
  }
}
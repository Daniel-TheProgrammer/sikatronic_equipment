import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'learn_more_controller.dart';
class LearnMoreScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LearnMoreScreenController>(() => LearnMoreScreenController());
  }
}
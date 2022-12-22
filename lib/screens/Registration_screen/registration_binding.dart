import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Registration_screen/registration_controller.dart';



class RegistrationScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationScreenController>(() => RegistrationScreenController());
  }
}
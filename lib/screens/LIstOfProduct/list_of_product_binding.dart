import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/LIstOfProduct/list_of_product_controller.dart';

class ListOfProductScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListOfProductScreenController>(() => ListOfProductScreenController());
  }
}
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Notification_screen/notification_controller_screen.dart';
class NotificationScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationScreenController>(() => NotificationScreenController());
  }
}
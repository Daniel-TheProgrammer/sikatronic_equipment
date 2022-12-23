import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SendRequestController extends GetxController {
  var date = DateFormat().add_yMd().format(DateTime.now()).obs;
  var time = TimeOfDay(
          hour: int.parse(DateFormat('HH').format(DateTime.now())),
          minute: int.parse(DateFormat('mm').format(DateTime.now())))
      .obs;

  datePicker(DateTime datepicked) {
    return date.value = DateFormat().add_yMd().format(datepicked);
  }

  timePicker(TimeOfDay timepicked) {
    return time.value = timepicked;
  }
}

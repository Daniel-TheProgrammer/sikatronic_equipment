import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sikatronics_equipment/screens/SendRequest/send_request_controller.dart';

class SendRequestPage extends StatelessWidget {
  SendRequestPage({Key? key}) : super(key: key);

  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _productDetailsEditingController =
      TextEditingController();

  SendRequestController controller = Get.put(SendRequestController());
  String pickedDate = DateFormat().add_yMd().format(DateTime.now());
  String timePicked = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: Get.height,
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: Colors.white
                      //  borderRadius: BorderRadius.circular(7),
                      ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'SENT US A REQUEST',
                        style: TextStyle(
                            color: Color(0xff361847),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      fieldLabel(
                          label: 'Machine Name/Vehicle/Equipment/Merchandise'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: inputDeco.copyWith(
                          hintText: 'Enter the Name',
                        ),
                        controller: _nameEditingController,

                        /*         InputDecoration(
                          hintText: 'Enter the Name',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                 */
                      ),
                      // TextField(
                      //   decoration: inputDeco.copyWith( hintText: 'Enter Machine Name',),
                      //   style: const TextStyle(color: Colors.black),
                      //   controller: _nameEditingController,
                      // ),
                      const SizedBox(
                        height: 30,
                      ),
                      fieldLabel(label: 'Availability for call'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                                width: Get.width / 2,
                                child: Obx((() {
                                  return TextField(
                                    readOnly: true,
                                    onChanged: (value) {
                                      //Do something with the user input.
                                    },
                                    decoration: inputDeco.copyWith(
                                        hintText: controller.date.toString(),
                                        prefixIcon: IconButton(
                                            onPressed: () {
                                              showCalendar(context);
                                            },
                                            icon: const Icon(
                                              Icons.calendar_today_outlined,
                                              size: 20,
                                            ))),
                                    /*                    const InputDecoration(
                                  hintText: 'DD/MM/YY',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
            */
                                  );
                                }))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: SizedBox(
                                width: Get.width / 2.2,
                                child: Obx((() {
                                  return TextField(
                                    readOnly: true,
                                    onChanged: (value) {
                                      //Do something with the user input.
                                    },
                                    decoration: inputDeco.copyWith(
                                      hintText:
                                          controller.time.value.format(context),
                                      prefixIcon: IconButton(
                                          onPressed: (() {
                                            showClock(context);
                                          }),
                                          icon: const Icon(Icons.punch_clock)),

                                      /*                     InputDecoration(
                                  hintText: '00:00 AM',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
          */
                                    ),
                                  );
                                }))),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      fieldLabel(label: 'Email'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: inputDeco.copyWith(
                          hintText: 'Enter your Email',
                        ),
                        controller: _emailEditingController,

                        /*                      InputDecoration(
                          hintText: 'Enter your Email',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
   */
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      fieldLabel(label: 'Description'),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: Get.height / 3.5,
                        child: TextField(
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: inputDeco.copyWith(
                              hintText: 'Enter your Product Details'),
                          /*                      
                           InputDecoration(
                            hintText: 'Enter your Product Details',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                          ),
     */
                          maxLength: 1000,
                          maxLines: 10,
                          controller: _productDetailsEditingController,
                        ),
                      ),
                      // TextField(
                      //   style: const TextStyle(color: Colors.grey),
                      //   decoration: inputDeco.copyWith(
                      //
                      //     hintText: 'Enter your Product Details',
                      //   ),
                      //   maxLength: 1000,
                      //   maxLines: 10,
                      //   controller: _productDetailsEditingController,
                      // ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      MaterialButton(
                        color: Color(0xff361847),
                        minWidth: double.infinity,
                        height: 45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        onPressed: () {
                          Validation();
                        },
                        child: const Text(
                          'Send',
                          style: TextStyle(fontSize: 18, color: Colors.yellow),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showClock(BuildContext context) async {
    var time = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.dial,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(DateFormat('HH').format(DateTime.now())),
            minute: int.parse(DateFormat('mm').format(DateTime.now()))));

    if (time != null) {
      controller.timePicker(time);
      timePicked = controller.timePicker(time).format(context);
      print(timePicked);
    } else {
      print('no selected date');
      timePicked = TimeOfDay(
              hour: int.parse(DateFormat('HH').format(DateTime.now())),
              minute: int.parse(DateFormat('mm').format(DateTime.now())))
          .format(context);
    }
  }

  showCalendar(BuildContext context) async {
    DateTime? pickerDate = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100));
    if (pickerDate != null) {
      controller.datePicker(pickerDate);
      pickedDate = controller.date.toString();
      print(pickedDate);
    } else {
      print('no selected date');
      return;
    }
  }

  Validation() {
    if (_nameEditingController.text.isEmpty ||
        _emailEditingController.text.isEmpty ||
        _productDetailsEditingController.text.isEmpty) {
      print('not validated');

      print(_nameEditingController.text);
      print(_emailEditingController.text);
      print(_productDetailsEditingController);

      print(pickedDate);
      print(timePicked);

      return Get.snackbar('an error has been occured',
          'you have to fill al the fields properly',
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: Get.width,
          backgroundColor: Colors.white,
          colorText: Colors.pink,
          icon: const Icon(
            Icons.warning_amber_outlined,
            color: Colors.red,
          ));
    } else {
      print('validated');

      print(_nameEditingController.text);
      print(_emailEditingController.text);
      print(_productDetailsEditingController);

      print(pickedDate);
      print(timePicked);
    }
  }

  Row fieldLabel({String? label}) {
    return Row(
      children: [
        Expanded(
          child: Text(label!,
              style: const TextStyle(
                  color: Color(0xff361847),
                  fontWeight: FontWeight.normal,
                  fontSize: 18)),
        )
      ],
    );
  }
}

InputDecoration inputDeco = const InputDecoration(
  hintText: 'Enter Machine Name.',
  hintStyle: TextStyle(color: Colors.black),
  labelStyle: TextStyle(color: Colors.black),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sikatronics_equipment/screens/SendRequest/send_request_controller.dart';
import 'package:sikatronics_equipment/successfull_screen/successfull_screen.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

class SendRequestPage extends StatelessWidget {
  SendRequestPage({Key? key}) : super(key: key);

  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _productDetailsEditingController =
      TextEditingController();
  TextEditingController _phoneEditingController = TextEditingController();

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
          body: Container(
            height: Get.height,
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.white
                //  borderRadius: BorderRadius.circular(7),
                ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // const Text(
                //   'SENT US A REQUEST',
                //   style: TextStyle(
                //       color: Color(0xff361847),
                //       fontWeight: FontWeight.bold,
                //       fontSize: 22),
                // ),
                textTranslator(
                    text: 'sendRequestPageHeadText',
                    color: const Color(0xff361847),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    fieldLabel(label: 'sendRequestPageBodyText'.tr),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: inputDeco.copyWith(
                        hintText: 'sendRequestPageName'.tr,
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
                    fieldLabel(label: 'sendRequestPageCall'.tr),
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
                                  onChanged: (value) {},
                                  decoration: inputDeco.copyWith(
                                    hintText:
                                        controller.time.value.format(context),
                                    prefixIcon: IconButton(
                                        onPressed: (() {
                                          showClock(context);
                                        }),
                                        icon: const Icon(Icons.punch_clock)),
                                  ),
                                );
                              }))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    fieldLabel(label: 'sendRequestPageEmail'.tr),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: inputDeco.copyWith(
                        hintText: 'sendRequestPageEnterEmail'.tr,
                      ),
                      controller: _emailEditingController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    fieldLabel(label: 'Phone No'.tr),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: inputDeco.copyWith(
                        hintText: 'Enter Phone Number'.tr,
                      ),
                      controller: _phoneEditingController,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    fieldLabel(label: 'sendRequestPageDesc'.tr),
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
                            hintText: 'sendRequestPageProdDetails'.tr),
                        maxLength: 1000,
                        maxLines: 10,
                        controller: _productDetailsEditingController,
                      ),
                    ),
                    MaterialButton(
                      color: Color(0xff361847),
                      minWidth: double.infinity,
                      height: 45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      onPressed: () {
                        Validation(context);
                      },
                      // child: const Text(
                      //   'Send',
                      //   style: TextStyle(fontSize: 18, color: Colors.yellow),
                      // ),

                      child: textTranslator(
                        text: 'sendRequestPageSend',
                        fontSize: 18,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                )),
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

  Validation(BuildContext context) async {
    if (_nameEditingController.text.isEmpty ||
        _emailEditingController.text.isEmpty ||
        _productDetailsEditingController.text.isEmpty ||
        _phoneEditingController.text.isEmpty) {
      print('not validated');

      return Get.snackbar(
          'sendRequestSnackbarTitle'.tr, 'sendRequestSnackbarMsg'.tr,
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
      if (timePicked.isEmpty) {
        timePicked = TimeOfDay(
                hour: int.parse(DateFormat('HH').format(DateTime.now())),
                minute: int.parse(DateFormat('mm').format(DateTime.now())))
            .format(context);
      }
      await controller
          .saveDataInDb(
              name: _nameEditingController.text,
              email: _emailEditingController.text,
              availableToCallDate: pickedDate,
              availableToCallTime: timePicked,
              phone: _phoneEditingController.text,
              description: _productDetailsEditingController.text)
          .then((_) {
        print(controller.errorToDb.toString());
        Get.to(() => SuccessFullScreen(valid: controller.errorToDb.isFalse));
      });
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

InputDecoration inputDeco = InputDecoration(
  hintText: 'sendRequestMachineName'.tr,
  hintStyle: const TextStyle(color: Colors.black),
  labelStyle: const TextStyle(color: Colors.black),
  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

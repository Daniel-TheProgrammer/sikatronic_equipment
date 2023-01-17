import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/LIstOfProduct/list_of_product.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/widget/my_input_fields.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';
import 'package:uuid/uuid.dart';

import '../../widget/progress_indication.dart';
import 'registration_controller.dart';

class RegitrationScreen extends StatelessWidget {
  RegitrationScreen({super.key});

  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _lastNameEditingController =
      TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _companyNameEditingController =
      TextEditingController();
  TextEditingController _phoneNumberEditingController = TextEditingController();
  final TextEditingController _countryEditingController =
      TextEditingController();

  String? _name;
  String? _lastName;
  String? _company;
  String? _email;
  String? _country;
  String? _phoneNum;
  String hintCountry = 'Country';

  //String countryFlag = 'assets/imgs/united-kingdom.png';

  RegistrationScreenController controller =
      Get.put(RegistrationScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Obx((() {
        return controller.progress.isTrue
            ? linearProgress()
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: Get.height / 8,
                        width: Get.width / 1.5,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Image.asset('assets/imgs/logo_violet.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    MyInputField(
                      title: 'registrationFirstName'.tr,
                      textInputType: TextInputType.text,
                      hintText: 'registrationEnterFirstName'.tr,
                      controller: _nameEditingController,
                      allowKeyboard: true,
                    ),
                    MyInputField(
                      title: 'registrationLastName'.tr,
                      textInputType: TextInputType.text,
                      hintText: 'registrationLastName'.tr,
                      controller: _lastNameEditingController,
                      allowKeyboard: true,
                    ),
                    MyInputField(
                      title: 'sendRequestPageEmail'.tr,
                      textInputType: TextInputType.emailAddress,
                      hintText: 'sendRequestPageEnterEmail'.tr,
                      controller: _emailEditingController,
                      allowKeyboard: true,
                    ),
                    MyInputField(
                      title: 'registrationCompanyName'.tr,
                      textInputType: TextInputType.emailAddress,
                      hintText: "registrationEnterCompanyName".tr,
                      controller: _companyNameEditingController,
                      allowKeyboard: true,
                    ),
                    Obx((() {
                      return MyInputField(
                        title: 'registrationCountry'.tr,
                        hintText: controller.countryName.toString(),
                        allowKeyboard: false,
                        controller: _countryEditingController,
                        widget:
                            //here i just add a dummy widget but in furure in will be a backage that display countries, also you cant type
                            Row(children: [
                          GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  onSelect: ((value) {
                                     controller.getPhoneInit(
                                      value.phoneCode,
                                    );
                                    controller.getCountryName(
                                        value.name, value.flagEmoji);
                                    _country = value.name;
                                  }));
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 18,
                                  width: 22,
                                  child: Obx(
                                    (() {
                                      return Text(controller.countryFlag
                                          .toString()); 
                                  /* Image.asset(
                                  height: 18,
                                  width: 20,
                                ); */
                                    }),
                                  ),
                                ),
                                const Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          )
                        ]),
                      );
                    })),
                    Obx((() {
                      return MyInputField(
                        title: 'Phone Number'.tr,
                        hintText: 'XXX XXX XXX',
                        allowKeyboard: true,
                        textInputType: TextInputType.phone,
                        controller: _phoneNumberEditingController,
                        widget: Row(children: [
                          GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  onSelect: ((value) {
                                    controller.getPhoneInit(
                                      value.phoneCode,
                                    );
                                    controller.getCountryName(
                                        value.name, value.flagEmoji);
                                    _country = value.name;
                                  }));
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 18,
                                  width: 22,
                                  child: Obx(
                                    (() {
                                      return Text(
                                          controller.countryFlag.toString());
                                    }),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text('+${controller.phoneInit}'),
                                const Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          )
                        ]),
                      );
                    })),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () async {
                          await validation();
                        },
                        child: Container(
                          width: Get.width * .9,
                          height: 48,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor500,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Continue',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: AppColor.accentColor400,
                              ),
                            ),

                            // child:
                            // textTranslator(text: 'continueText', fontSize: 16,
                            //     fontWeight: FontWeight.w600,
                            //     height: 1.5,
                            //     color: AppColor.accentColor400,),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
      }))),
    );
  }

  validation() async {
    if (_nameEditingController.text.isEmpty ||
        _lastNameEditingController.text.isEmpty ||
        _emailEditingController.text.isEmpty ||
        _phoneNumberEditingController.text.length < 10 ||
        _companyNameEditingController.text.isEmpty ||
        _country == null) {
      debugPrint('not validated');
      return Get.snackbar(
          'sendRequestSnackbarTitle'.tr, 'sendRequestSnackbarMsg'.tr,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: Colors.pink,
          icon: const Icon(
            Icons.warning_amber_outlined,
            color: Colors.red,
          ));
    } else {
      //This combines the country code from country picker package and the phone number inputted by the user

      final combinedCountryCodeUserPhoneNumber = [
        '+${controller.phoneInit}',
        _phoneNumberEditingController.text.trim()
      ].join('');
      debugPrint(combinedCountryCodeUserPhoneNumber);
      //-----------------------------------------------------

      _name = _nameEditingController.text;
      _lastName = _lastNameEditingController.text;
      _email = _emailEditingController.text;
      _company = _companyNameEditingController.text;

      _phoneNum = combinedCountryCodeUserPhoneNumber;
      controller.progressOnOff(true);
      await controller.signIn(_email!).catchError((error) {
        controller.progressOnOff(false);
      });

      await controller
          .addSellers(
        name: _name,
        lastName: _lastName,
        email: _email,
        companyName: _company,
        country: _country,
        phone: _phoneNum,
      )
          .then((value) {
        controller.progressOnOff(false);
        Get.to(ProductList());
      }).catchError((error) {
        controller.progressOnOff(false);
        debugPrint("Failed to add user: $error");
      });
      debugPrint(
          'name :$_name,last name : $_lastName,email :$_email,country:$_country,company:$_company,phone number: $_phoneNum');
    }
  }
}

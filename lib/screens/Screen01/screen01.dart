// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';

import 'package:sikatronics_equipment/widget/my_button.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //Add any new language here and also in the app_translations.dart as required
  final List<Map<String, dynamic>> locale = const <Map<String, dynamic>>[
    {'name': '🇬🇧 English', 'locale': Locale('en', 'US')},
    {'name': '🇫🇷 French', 'locale': Locale('fr', 'FR')},
    {'name': '🇩🇪 German', 'locale': Locale('de', 'DE')},
    {'name': '🇵🇹 Portuguese', 'locale': Locale('pt', 'PT')},
    {'name': '🇪🇸 Spanish', 'locale': Locale('es', 'ES')}
  ];
  final List<String> items = [
    'English',
    'French',
    'German',
    'Portuguese',
    'Spanish',
  ];
  String? selectedValue;

//TODO: to be refatored later using the getx controller and calling it here
  Future<T?> showLocalDialog<T>(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: Container(
                width: double.maxFinite,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 9),
                            child: Center(child: Text(locale[index]['name'])),
                          ),
                          onTap: () =>
                              updateLocale(locale[index]['locale'], context),
                        ),
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.black45,
                        ),
                    itemCount: locale.length),
              ),
            ));
  }

//This is to update the locale meaning the language changes
  updateLocale(Locale locale, BuildContext context) {
    Navigator.of(context).pop();
    Get.updateLocale(locale);
    debugPrint('update locale called');
    Future.delayed(
        const Duration(seconds: 4), () => Get.to(() => const SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor500,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                    width: 180,
                    height: 169.47,
                    child: Image.asset(
                      'assets/imgs/logo_violet.png',
                      width: 180,
                      height: 169.47,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    // companionofentrepreneursweprov (75:626)

                    // child:const Text(
                    //   'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w400,
                    //     height: 1.5,
                    //     color: // Colors.red
                    //         AppColor.accentColor400,
                    //   ),
                    // ),

                    child: textTranslator(
                      text: 'screen01BodyText',
                      textAlign: TextAlign.center,
                      fontSize: SizerUtil.deviceType == DeviceType.mobile ? 16.sp : 13.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: AppColor.accentColor400,
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Icon(
                        Icons.list,
                        size: 16,
                        color: AppColor.primaryColor500,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Choose language',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColor.accentColor400,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                      Get.to(SecondScreen());
                      // updateLocale(locale[1][''], context);
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_downward_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: AppColor.accentColor400,
                  iconDisabledColor: AppColor.accentColor400,
                  buttonHeight: 50,
                  buttonWidth: 160,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: AppColor.accentColor400,
                    ),
                    color: AppColor.primaryColor500,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColor.primaryColor500,
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: false,
                  offset: const Offset(-20, 0),
                ),
              ),
            ),
            // MyButton(
            //     onTapped: (() {
            //       showLocalDialog(context);
            //     }),
            //     label: 'screen01ButtonText'.tr)
          ],
        ),
      ),
    );
  }
}

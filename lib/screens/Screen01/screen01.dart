// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';
import 'package:sikatronics_equipment/utils/media_query.dart';

import 'package:sikatronics_equipment/widget/my_button.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

import '../../utils/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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
  // Future<T?> showLocalDialog<T>(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (_) => AlertDialog(
  //             content: Container(
  //               width: double.maxFinite,
  //               child: ListView.separated(
  //                   shrinkWrap: true,
  //                   itemBuilder: (context, index) => InkWell(
  //                         child: Padding(
  //                           padding: const EdgeInsets.symmetric(vertical: 9),
  //                           child: Center(child: Text(locale[index]['name'])),
  //                         ),
  //                         onTap: () =>
  //                             updateLocale(locale[index]['locale'], context),
  //                       ),
  //                   separatorBuilder: (context, index) => const Divider(
  //                         color: Colors.black45,
  //                       ),
  //                   itemCount: locale.length),
  //             ),
  //           ));
  // }

//This is to update the locale meaning the language changes
  updateLocale(Locale locale) {
    // Navigator.of(context).pop();
    Get.updateLocale(locale);
    debugPrint('update locale called');
    Future.delayed(
        const Duration(seconds: 3), () => Get.to(() => const SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQueryContext.ofWidth(context);
    final height = MediaQueryContext.ofHeight(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor500,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 32.h),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32.h),
                    width: 180.w,
                    height: 169.47.h,
                    child: Image.asset(
                      'assets/imgs/logo_violet.png',
                      width: 180.w,
                      height: 169.47.h,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    // margin: const EdgeInsets.all(8), //can be restored later
                    // companionofentrepreneursweprov (75:626)

                    child: Text(
                      // 'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.'.tr,
                      'screen01BodyText'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: // Colors.red
                            AppColor.accentColor400,
                      ),
                    ),

                    // child: textTranslator(
                    //   text: 'screen02HeadText',
                    //   textAlign: TextAlign.center,
                    //   fontSize: 18.sp,
                    //   fontWeight: FontWeight.w400,
                    //   height: 1.5,
                    //   color: AppColor.accentColor400,
                    // ),
                  ),
                ],
              ),
            ),

            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: [
                      Icon(
                        Icons.list,
                        size: 18.sp,
                        color: AppColor.primaryColor500,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Choose language',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, //AppColor.primaryColor500
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: locale
                      .map((item) => DropdownMenuItem<String>(
                            value: item['name'],
                            child: Text(
                              item['name'],
                              style: TextStyle(
                                fontSize: 20.sp,
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
                      // debugPrint('**************$selectedValue');
                      final localeName = locale
                          .where((element) => element['name'] == selectedValue)
                          .toList();
                      // final value3 = value2.first;
                      // debugPrint(value3['locale'].toString());

                      updateLocale(localeName.first['locale']);

                      // Get.to(() => const SecondScreen());
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
                  buttonWidth: width.width * 0.55, //160 //220
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

// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';

import 'package:sikatronics_equipment/widget/my_button.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

import '../../utils/colors.dart';


class FirstScreen extends StatelessWidget {
   const FirstScreen({super.key});

  //Add any new language here and also in the app_translations.dart as required
  final List<Map<String, dynamic>> locale =const  <Map<String, dynamic>>[
    {'name': '🇬🇧 English', 'locale': Locale('en', 'US')},
    {'name': '🇫🇷 French', 'locale': Locale('fr', 'FR')},
    {'name': '🇩🇪 German', 'locale': Locale('de', 'DE')},
    {'name': '🇵🇹 Portuguese', 'locale': Locale('pt', 'PT')},
    {'name': '🇪🇸 Spanish', 'locale': Locale('es', 'ES')}
  ];

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
    Future.delayed(const Duration(seconds: 4), () =>   Get.to(() => const SecondScreen()));
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
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: AppColor.accentColor400,
                    ),
                  ),
                ],
              ),
            ),
            MyButton(
                onTapped: (() {
                  showLocalDialog(context);
                }),
                label: 'screen01ButtonText'.tr)
          ],
        ),
      ),
    );
  }
}

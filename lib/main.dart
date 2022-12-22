import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/pages_route.dart';

import 'screens/lot_of_screen/screen01.dart';
import 'screens/lot_of_screen/screen02.dart';
import 'screens/lot_of_screen/screen03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: pages,
      home: ProductList(),
    );
  }
}

//******* PLEASE DO NOT DELETE THIS ********* */
/*
TODO : 
Add downloaded font style[DONE], add the dart file for text styles too, do the different routing,
redo language selection using dropdown widget, commence translation in l10n
fill in controller and

 */

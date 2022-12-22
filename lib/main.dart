

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/l10n/app_translations.dart';
import 'package:sikatronics_equipment/routes/pages_route.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01.dart';


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
      home: const FirstScreen(),
    );
  }
}

//******* PLEASE DO NOT DELETE THIS ********* */
/*
TODO : 
Add downloaded font style, add the dart file too, do the different routing,
redo language selection using dropdown widget, commence translation in l10n
fill in controller and

 */

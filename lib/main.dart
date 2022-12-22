import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/l10n/app_translations.dart';
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
      home: FirstScreen(),
    );
  }
}

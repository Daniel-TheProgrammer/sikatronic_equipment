import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
import 'package:get/get.dart';
import 'package:sikatronics_equipment/auth.dart';
import 'package:sikatronics_equipment/routes/pages_route.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01_binding.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01_controller.dart';
import 'package:sikatronics_equipment/screens/SendRequest/send_request_page.dart';
import 'package:sikatronics_equipment/screens/Splash_Screen/splash_screen_binding.dart';
import 'package:sikatronics_equipment/screens/Splash_Screen/splash_screen_controller.dart';
import 'package:sikatronics_equipment/screens/lot_of_screen/screen02.dart';
import 'package:sikatronics_equipment/screens/lot_of_screen/screen03.dart';
import 'package:sikatronics_equipment/screens/screen04/screen04.dart';
import 'package:sikatronics_equipment/successfull_screen/successfull_screen.dart';

import 'firebase_options.dart';
import 'l10n/app_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //orientation of the app set...
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      initialBinding: Screen01Binding(),
      onInit: () => Screen01Controller().onInit(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: pages,
      home:
          // FourthScreen()
          const AuthCheck(),
    );
  }
}

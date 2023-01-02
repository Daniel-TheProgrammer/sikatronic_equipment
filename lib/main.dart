import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //orientation of the app set...
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   useInheritedMediaQuery: true,
    //   minTextAdapt: true,
    //   child: const AuthCheck(),
    //   builder: (_, child) {
    //     return GetMaterialApp(
    //       title: 'Flutter Demo',
    //       useInheritedMediaQuery: true,
    //       translations: AppTranslations(),
    //       // locale: Get.deviceLocale, //TODO: enable back after testing for responsiveness...
    //       locale: DevicePreview.locale(context),
    //       builder: DevicePreview.appBuilder,
    //       debugShowCheckedModeBanner: false,
    //       initialBinding: Screen01Binding(),
    //       onInit: () => Screen01Controller().onInit(),
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //       ),
    //       getPages: pages,
    //       home:
    //           // FourthScreen()
    //           child,
    //     );
    //   },
    // );
    //****************SIZER
    return Sizer(builder: (context, orientation, deviceType) {
      return  GetMaterialApp(
          title: 'Flutter Demo',
          useInheritedMediaQuery: true,
          translations: AppTranslations(),
          // locale: Get.deviceLocale, //TODO: enable back after testing for responsiveness...
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
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
    });
    
  }
}

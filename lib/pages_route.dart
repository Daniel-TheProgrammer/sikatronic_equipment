import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Registration_screen/registration.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';
import 'package:sikatronics_equipment/screens/Screen03/screen03.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: '/firstScreen', page: (() => const FirstScreen())),
  GetPage(name: '/secondScreen', page: (() => SecondScreen())),
  GetPage(name: '/thirdScreen', page: (() => const ThirdScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen())),
];

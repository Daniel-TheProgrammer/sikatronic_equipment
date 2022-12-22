import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/lot_of_screen/registration.dart';

import 'screens/lot_of_screen/screen01.dart';
import 'screens/lot_of_screen/screen02.dart';
import 'screens/lot_of_screen/screen03.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: '/firstScreen', page: (() => const FirstScreen())),
  GetPage(name: '/secondScreen', page: (() => const SecondScreen())),
  GetPage(name: '/thirdScreen', page: (() => const ThirdScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen()))
];

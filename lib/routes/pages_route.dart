import 'package:get/get.dart';
<<<<<<< HEAD:lib/routes/pages_route.dart
import 'package:sikatronics_equipment/screens/Screen01/screen01.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';
import 'package:sikatronics_equipment/screens/Screen03/screen03.dart';

=======
import 'package:sikatronics_equipment/screens/lot_of_screen/registration.dart';
>>>>>>> 957f9416666d12b1d1272405829954f2986d35d4:lib/pages_route.dart


List<GetPage<dynamic>> pages = [
  GetPage(name: '/firstScreen', page: (() => const FirstScreen())),
  GetPage(name: '/secondScreen', page: (() => const SecondScreen())),
  GetPage(name: '/thirdScreen', page: (() => const ThirdScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen()))
];


 
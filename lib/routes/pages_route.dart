import 'package:get/get.dart';


import '../screens/Registration_screen/registration.dart';
import '../screens/Screen01/screen01.dart';
import '../screens/Screen02/screen02.dart';
import '../screens/Screen03/screen03.dart';


List<GetPage<dynamic>> pages = [
  GetPage(name: '/firstScreen', page: (() =>  FirstScreen())),
  GetPage(name: '/secondScreen', page: (() => const SecondScreen())),
  GetPage(name: '/thirdScreen', page: (() => const ThirdScreen())),
  GetPage(name: '/registrationScreen', page: (() => RegitrationScreen())),

];


 


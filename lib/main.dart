import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/lot_of_screen/screen01.dart';
import 'screens/lot_of_screen/screen02.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SecondScreen(),
    );
  }
}

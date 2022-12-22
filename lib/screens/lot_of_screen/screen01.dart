import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/screens/Screen02/screen02.dart';

import 'package:sikatronics_equipment/widget/my_button.dart';

import 'package:sikatronics_equipment/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.firstClr,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                    width: 180,
                    height: 169.47,
                    child: Image.asset(
                      'assets/imgs/logo_violet.png',
                      width: 180,
                      height: 169.47,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    // companionofentrepreneursweprov (75:626)

                    child: Text(
                      'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: // Colors.red
                            AppColor.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MyButton(
                onTapped: (() {
                  Get.to(() => const SecondScreen());
                }),
                label: 'Choose language')
          ],
        ),
      ),
    );
  }
}

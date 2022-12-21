import 'package:flutter/material.dart';

import 'package:sikatronics_equipment/widget/my_button.dart';

import '../../colors.dart';

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
                    // group259sNF (75:614)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                    width: 180,
                    height: 169.47,
                    child: Image.asset(
                      'assets/imgs/logo_yellow.png',
                      width: 180,
                      height: 169.47,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    // companionofentrepreneursweprov (75:626)

                    child: const Text(
                      'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: // Colors.red
                            Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MyButton(onTapped: (() {}), label: 'Choose language')
            /*  Container(
              // buttonspB1 (75:627)
              margin: const EdgeInsets.fromLTRB(85, 0, 85, 0),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xfffff740)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                
                child: Center(
                  child: Text(
                    'Choose language',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      color: Color(0xfffff510),
                    ),
                  ),
                ),
              ),
            ),
         */
          ],
        ),
      ),
    );
  }
}

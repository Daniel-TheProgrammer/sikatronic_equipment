import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/colors.dart';

import '../../widget/my_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.firstClr,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height / 1.8,
              child: Image.asset(
                'assets/imgs/engine001.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.5, 0, 0.5, 32),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                          child: Text(
                            'Welcome to Sikatronicks Equipment ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                          child: Text(
                            'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyButton(
                    onTapped: () {},
                    label: 'Continue',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

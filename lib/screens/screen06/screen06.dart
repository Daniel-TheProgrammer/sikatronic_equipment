import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/utils/colors.dart';

import '../Registration_screen/registration.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(18, 0, 34, 47),
              width: double.infinity,
              height: Get.height / 2.6,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: Get.width / 1.2,
                        height: Get.height / 2.3,
                        child: Image.asset(
                          'assets/imgs/engine005.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 28,
                    child: Align(
                      child: SizedBox(
                        width: Get.width,
                        height: Get.height,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppColor.primaryColor500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 34,
                    top: 0,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: const Color(0xffece300),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '01',
                            style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: AppColor.accentColor400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 51,
                    child: SizedBox(
                      width: Get.width / 1.07,
                      height: Get.height / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 25, 5, 5),
                            child: Text(
                              'We purchase, deliver, Install and do the Maintenance ',
                              style: GoogleFonts.poppins(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: AppColor.accentColor400,
                              ),
                            ),
                          ),
                          Container(
                            //margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Sikatronics Equipment handles the purchase, installation, delivery and maintenance of the equipment required for your project, ',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5950000286,
                                  color: AppColor.accentColor400,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(() => RegitrationScreen()),
                                child: Stack(children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      'assets/imgs/progress_button_100.png',
                                      width: 80,
                                      height: 80,
                                    ),
                                  ),
                                  Positioned(
                                    top: 29,
                                    left: 18,
                                    child: Center(
                                      child: Text(
                                        'Ready',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: AppColor.primaryColor500,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  /*                  Positioned(
                    left: 5,
                    top: 40,
                    child: Align(
                      child: SizedBox(
                        width: 66,
                        height: 96,
                        child: Text(
                          '03',
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
  */
                  Positioned(
                    left: 24,
                    top: 0,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: const Color(0xff441e59),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Center(
                        child: Text(
                          '4',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            letterSpacing: 2.4,
                            color: AppColor.primaryColor500,
                          ),
                        ),
                      ),
                    ),
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

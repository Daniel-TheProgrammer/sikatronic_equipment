import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/colors.dart';
import 'package:sikatronics_equipment/screens/lot_of_screen/registration.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
              height: Get.height / 3,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: Get.width / 1.2,
                        height: Get.height / 2.6,
                        child: Image.asset(
                          'assets/imgs/engine002.png',
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
                          decoration: BoxDecoration(
                            color: AppColor.firstClr,
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
                        color: Color(0xffece300),
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
                              color: AppColor.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 71,
                    child: SizedBox(
                      width: Get.width / 1.07,
                      height: Get.height / 1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 25, 78, 5),
                            child: Text(
                              'Search for  Machines and Equipement ',
                              style: GoogleFonts.poppins(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                          Container(
                            //margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Lorem ipsum dolor sit amet consectetur adipiscing elit ',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5950000286,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(() => RegitrationScreen()),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 80,
                                  height: 80,
                                  child: Image.asset(
                                    'assets/imgs/progress_button.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 40,
                    child: Align(
                      child: SizedBox(
                        width: 66,
                        height: 96,
                        child: Text(
                          '01',
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 0,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xff441e59),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            letterSpacing: 2.4,
                            color: AppColor.firstClr,
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

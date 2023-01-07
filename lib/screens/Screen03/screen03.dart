// ignore_for_file: avoid_unnecessary_containers

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/Registration_screen/registration.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/utils/media_query.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';
import 'package:sizer/sizer.dart';

import '../screen04/screen04.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQueryContext.ofHeight(context);
    final width = MediaQueryContext.ofWidth(context);
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
              height: height.height * 0.33, //height.height / 3
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: width.width / 1.2, //width.width / 1.2
                        height: height.height / 2.6, //height.height / 2.6
                        child: Image.asset(
                          'assets/imgs/engine001.png',
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
                        width: width.width,
                        height: height.height,
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
                      width: 8.h, //55
                      height: 8.h, //55
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
                              fontSize: 32.sp,
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
                    left: 24,
                    top: 71,
                    child: SizedBox(
                      width: width.width / 1.07,
                      height: height.height / 1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0, 0, 2.h, 0), //top = 25, right = 78,b=5
                            // child: Text(
                            //   'Search for  Machines and Equipement',
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 26,
                            //     fontWeight: FontWeight.w700,
                            //     height: 1.5,
                            //     color: AppColor.accentColor400,
                            //   ),
                            // ),
                            child: textTranslator(
                              text: 'screen03HeadText',
                              fontSize: 22.sp, //26
                              fontWeight: FontWeight.w700,
                              height: 0.2.h,
                              color: AppColor.accentColor400,
                            ),
                          ),
                          // SizedBox(
                          //   height: height.height * 0.01,
                          // ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1.h, 0,
                                1.h), //EdgeInsets.fromLTRB(0, 0, 0, 15)
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0, 0.5.h, 3.h, 0), //edgeInsets.all(6.0)
                              // child: Text(
                              //   '',
                              //   style: GoogleFonts.poppins(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.w400,
                              //     height: 1.5950000286,
                              //     color: AppColor.accentColor400,
                              //   ),
                              // ),
                              child: textTranslator(
                                  text: 'screen03BodyText',
                                  fontSize: 13.sp, //16
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.accentColor400,
                                  height: 1.5950000286),
                            ),
                          ),
                          SizedBox(
                            height: height.height / 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(() => const FourthScreen()),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(5.h, 0, 9.h, 0),
                                  width: 11.h, //80
                                  height: 11.h, //80
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Image.asset(
                                      'assets/imgs/progress_button.png',
                                      // width: 80,
                                      // height: 80,
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  /*                 Positioned(
                    left: 5,
                    top: 40,
                    child: Align(
                      child: SizedBox(
                        width: 66,
                        height: 96,
                        child: Text(
                          '05',
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
                      width: 8.h, //55
                      height: 8.h, //55
                      decoration: BoxDecoration(
                        color: const Color(0xff441e59),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 32.sp,
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

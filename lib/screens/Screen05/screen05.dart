import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/Registration_screen/registration.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/utils/media_query.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';
import 'package:sizer/sizer.dart';

import '../screen06/screen06.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

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
              margin: const EdgeInsets.fromLTRB(18, 0, 34, 5),
              width: double.infinity,
              height: height.height / 2.6, //Get.height / 2.6
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: width.width / 1.2, //Get.width / 1.2
                        height: height.height / 2.4, //Get.height / 2.4
                        child: Image.asset(
                          'assets/imgs/engine004.png',
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
                        width: width.width, // Get.width
                        height: height.height,// Get.height
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
                      height: 8.h,//55
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
                    left: 20,
                    top: 51,
                    child: SizedBox(
                      width: width.width / 1.07, //Get.width / 1.07
                      height: height.height / 2.5, //Get.height / 2.5
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 3.h, 1.h, 0.h), //EdgeInsets.fromLTRB(0, 25, 5, 5)
                            // child: Text(
                            //   'Get a Technical and Commercial Study. ',
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 23,
                            //     fontWeight: FontWeight.w700,
                            //     height: 1.5,
                            //     color: AppColor.accentColor400,
                            //   ),
                            // ),
                            child: textTranslator(
                              text: 'screen05HeadText',
                              fontSize: 21.sp, //23
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: AppColor.accentColor400,
                            ),
                          ),
                          Container(
                            //margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 1.h,3.h ,0), //EdgeInsets.all(8.0)
                              // child: Text(
                              //   'We will study your request technically and propose you the best equipment for your project.',
                              //   style: GoogleFonts.poppins(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.w400,
                              //     height: 1.5950000286,
                              //     color: AppColor.accentColor400,
                              //   ),
                              // ),
                              child: textTranslator(
                                text: 'screen05BodyText',
                                fontSize: 13.sp, //16
                                fontWeight: FontWeight.w400,
                                height: 1.5950000286,
                                color: AppColor.accentColor400,
                              ),
                            ),
                          ),
//                            SizedBox(
// height: height.height * 0.050,
//                           ),
                        SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(() => SixthScreen()),
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 11.h, //80
                                  height: 11.h, //80
                                  child: AspectRatio(
                                    aspectRatio: 1 /1,
                                    child: Image.asset(
                                      'assets/imgs/progress_button_75.png',
                                      // width: 11.h, //80
                                      // height: 11.h, //80
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
                      width: 8.h, //55
                      height: 8.h, //55
                      decoration: BoxDecoration(
                        color: const Color(0xff441e59),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Center(
                        child: Text(
                          '3',
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

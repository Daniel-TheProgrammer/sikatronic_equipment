import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/Registration_screen/registration.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/utils/media_query.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

import '../Screen05/screen05.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQueryContext.ofHeight(context);
    final width = MediaQueryContext.ofWidth(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0.5, 0, 0),
        // width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.fromLTRB(18, 0, 34, 35), //(18, 0, 34, 35)
                      width: double.infinity,
                      height: height.height / 3, //Get.height / 3
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: width.width / 1.2, // Get.width / 1.2
                                height: height.height / 2.4, // Get.height / 2.4
                                child: Image.asset(
                                  'assets/imgs/engine003.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      // color: Colors.red,
                      // height:
                      //     450, //heieght: MediaQuery.of(context).size.height / 1.4
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 28,
                            child: Align(
                              child: SizedBox(
                                width: width.width, // Get.width
                                height: height.height, //Get.height
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
                              width: 55, //55
                              height: 55, //55
                              decoration: BoxDecoration(
                                color: const Color(0xffece300),
                                borderRadius: BorderRadius.circular(27.5),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.h),
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
                            top: height.height * 0.05, //51
                            child: SizedBox(
                              width: width.width / 1.07, // Get.width / 1.07
                              height: height.height * 0.6, // Get.height / 1.5
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0, 25, 5, 2), //(0,25,5,5)
                                    // child: Text(
                                    //   'Find Machines, Machineries, Vehicles, Raw Material and Maintenance of your business',
                                    //   style: GoogleFonts.poppins(
                                    //     fontSize: 23,
                                    //     fontWeight: FontWeight.w700,
                                    //     height: 1.5,
                                    //     color: AppColor.accentColor400,
                                    //   ),
                                    // ),
                                    child: textTranslator(
                                      text: 'screen04HeadText',
                                      fontSize: 28.sp, //23
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
                                      color: AppColor.accentColor400,
                                    ),
                                  ),
                                  // SizedBox(height: height.height * 0.001,),

                                  Container(
                                    //margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                                    child: Padding(
                                        padding: EdgeInsets.all(
                                            8.0), //EdgeInsets.all(8.0)
                                        // child: Text(
                                        //   'Contact Sikatronics Equipment support team and provide details of the Machine, Equipment, Raw material or Machinery you need for your business. ',
                                        //   style: GoogleFonts.poppins(
                                        //     fontSize: 16,
                                        //     fontWeight: FontWeight.w400,
                                        //     height: 1.5950000286,
                                        //     color: AppColor.accentColor400,
                                        //   ),
                                        // ),
                                        child: textTranslator(
                                          text: 'screen04BodyText',
                                          fontSize: 18.sp, //16
                                          fontWeight: FontWeight.w400,
                                          height: 1.5950000286,
                                          color: AppColor.accentColor400,
                                        )),
                                  ),
                                  SizedBox(
                                    height: height.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            Get.to(() => FifthScreen()),
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.h, 0, 9.h, 0),
                                          width: 88.w, //80
                                          height: 88.h, //80
                                          child: AspectRatio(
                                            aspectRatio: 1 / 1,
                                            child: Image.asset(
                                              'assets/imgs/progress_button_50.png',
                                              // width: 80,
                                              // height: 80,
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
                              width: 55, //55
                              height: 55, //55
                              decoration: BoxDecoration(
                                color: const Color(0xff441e59),
                                borderRadius: BorderRadius.circular(27.5),
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.poppins(
                                    fontSize: 32.sp, //32
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
            ),
          );
        }),
      ),
    );
  }
}

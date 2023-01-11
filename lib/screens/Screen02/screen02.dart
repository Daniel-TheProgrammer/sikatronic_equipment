import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/Screen03/screen03.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/utils/media_query.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

import '../../widget/my_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQueryContext.ofHeight(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor500,
        ),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
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
                          color: Colors.white,
                          width: double.infinity,
                          // height: MediaQuery.of(context).size.height * 0.53,
                          height: height.height * 0.52,
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/imgs/engine001.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0.5, 0, 0.5, 10),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 20), //B=24
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24.w, vertical: 55.h),
                                      // child: Text(
                                      //   'Welcome to Sikatronicks Equipment',
                                      //   textAlign: TextAlign.center,
                                      //   style: GoogleFonts.poppins(
                                      //     fontSize: 24,
                                      //     fontWeight: FontWeight.w700,
                                      //     height: 1.5,
                                      //     color: AppColor.accentColor400,
                                      //   ),
                                      // ),
                                      child: textTranslator(
                                        text: 'screen02HeadText',
                                        textAlign: TextAlign.center,
                                        fontSize: 30.sp, // 24.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5,
                                        color: AppColor.accentColor400,
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                      margin: EdgeInsets.symmetric(horizontal: 24.w),
                                      // child: Text(
                                      //   'Companion of entrepreneur’s. We provide your machines, equipment, raw materials and maintenance for your business.',
                                      //   textAlign: TextAlign.center,
                                      //   style: GoogleFonts.poppins(
                                      //     fontSize: 16,
                                      //     fontWeight: FontWeight.w400,
                                      //     height: 1.5,
                                      //     color: const Color(0xFF000000),
                                      //   ),
                                      // ),
                                      child: textTranslator(
                                          text: 'screen02BodyText',
                                          textAlign: TextAlign.center,
                                          fontSize: 16.sp, //16.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: const Color(0xFF000000)),
                                    ),
                                  ],
                                ),
                              ),
                              MyButton(
                                onTapped: () {
                                  Get.to(() => const ThirdScreen());
                                },
                                label: 'continueText'.tr,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          ),
        ),
    );
  }
}

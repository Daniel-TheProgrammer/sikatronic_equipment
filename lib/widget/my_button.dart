import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/utils/colors.dart';

class MyButton extends StatelessWidget {
  final Function() onTapped;
  final String label;
  const MyButton({super.key, required this.onTapped, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: double.infinity,
        height: 30.h,  //48.h,
        // margin: const EdgeInsets.all(8),
        margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.accentColor400),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              height: 1.5,
              color: AppColor.accentColor400,
            ),
          ),
        ),
      ),
    );
  }
}

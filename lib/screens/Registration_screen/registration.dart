import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegitrationScreen extends StatelessWidget {
  const RegitrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: Get.height / 8,
                width: Get.width / 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Image.asset('assets/imgs/logo_violet.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

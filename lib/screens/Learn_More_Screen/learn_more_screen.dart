import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnMoreScreen extends StatelessWidget {
  const LearnMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff361847),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    Get.arguments['category'],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(Get.arguments['learnMore'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14)),
                  SizedBox(
                    height: 35,
                  ),
                  MaterialButton(
                    color: Color(0xffFFF510),
                    minWidth: double.infinity,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'Back to Home',
                      style: TextStyle(fontSize: 18, color: Color(0xff361847)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

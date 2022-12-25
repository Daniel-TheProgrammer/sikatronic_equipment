import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

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
                  // Text(
                  //   Get.arguments['learnMoreScreenCat'.tr],
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18),
                  // ),
                    textTranslator(text: Get.arguments['learnMoreScreenCat'],
                   color: Colors.white,
                          fontWeight:  FontWeight.bold,
                          fontSize: 18,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Text(Get.arguments['learnMoreScreenLearn'.tr],
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.normal,
                  //         fontSize: 14)),
                  textTranslator(text: Get.arguments['learnMoreScreenLearn'],
                   color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                  ),
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
                    // child: const Text(
                    //   'learnMoreScreenBackHome',
                    //   style: TextStyle(fontSize: 18, color: Color(0xff361847)),
                    // ),
                    child: textTranslator(text: "learnMoreScreenBackHome",
                    fontSize: 18, color: const Color(0xff361847),
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

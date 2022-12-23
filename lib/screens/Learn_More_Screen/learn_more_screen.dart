import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/colors.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
import 'package:sikatronics_equipment/screens/Learn_More_Screen/learn_more_screen.dart';
import 'package:sikatronics_equipment/utils/colors.dart';
class LearnMoreScreen extends StatelessWidget {
  const LearnMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(decoration: BoxDecoration(color: Color(0xff361847),borderRadius:
          BorderRadius.circular(18),),child:
          Padding(

            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text('INDUSTRY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
               , SizedBox(height: 30,),
                Text('Sikatronics equipment assists you technically and commercially to have new or used machines for production, production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... and any machine or equipment of your field',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14)),
              SizedBox(height: 35,),

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
          ),)
        ],),
      ),
    );
  }
}


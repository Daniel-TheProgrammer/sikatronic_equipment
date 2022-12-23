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
                Text('INDUSTRY RAW MATERIALS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
               , SizedBox(height: 30,),
                Text('Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14)),
              SizedBox(height: 35,),

                InkWell(onTap: (){
                  Navigator.of(context).pop();
                },
                  child: Container(
                    height: 40,
                    width: Get.width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.5,
                        color:Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Send Request',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),)
        ],),
      ),
    );
  }
}


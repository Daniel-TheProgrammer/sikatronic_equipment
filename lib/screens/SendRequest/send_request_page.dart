import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SendRequestPage extends StatelessWidget {
  const SendRequestPage({Key? key}) : super(key: key);

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
                Row(children: [Text('Your Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18))],),
                SizedBox(height: 10,), TextField(

                  decoration: InputDecoration(
                    hintText: 'Enter your Name.',hintStyle: TextStyle(color: Colors.white),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.
                          white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ), SizedBox(height: 10,),
                Row(children: [Text('Your Company',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18))],),
                SizedBox(height: 10,), TextField(

                  decoration: InputDecoration(
                    hintText: 'Enter your Company\'s Name',hintStyle: TextStyle(color: Colors.white),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.
                      white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(children: [Text('Product Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18))],),
                SizedBox(height: 10,), TextField(

                  decoration: InputDecoration(
                    hintText: 'Enter your Product Details',hintStyle: TextStyle(color: Colors.white),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.
                      white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                MaterialButton(color: Colors.white,minWidth: double.infinity,
                  height: 45,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  onPressed: (){},child: Text('Send Request',style: TextStyle(color: Color(0xff361847)),),)

              ],
            ),
          ),)
        ],),
      ),
    );
  }
}

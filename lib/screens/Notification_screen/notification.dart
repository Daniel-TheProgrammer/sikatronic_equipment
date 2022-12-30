import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Latest Requests',
                      style: TextStyle(
                          color: Color(0xff441E59),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
Image.asset('assets/imgs/Ellipse 194.png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'New Account Created',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (1).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Alane sent a Request',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (2).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Request Error',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194.png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'New Account Created',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (1).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Alane sent a Request',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (2).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Request Error',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194.png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'New Account Created',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (1).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Alane sent a Request',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 55,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Image.asset('assets/imgs/Ellipse 194 (2).png'), SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Request Error',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),SizedBox(width: 105,),
                            Text(
                              '30 mins Ago',
                              style: TextStyle(

                                  fontSize: 14,
                                  color: Color(0xff361847),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(

                                children: <TextSpan>[
                                  TextSpan(text: 'Alec Benjamin  ', style: TextStyle( color: Color(0xff361847),fontSize: 30),),
                                  TextSpan(text: 'just created a new \naccount for the company ', style: TextStyle( fontSize: 30,   color: Color(0xffA3A199),),),
                                  TextSpan(text: 'Music Record', style: TextStyle(  color: Color(0xff361847),fontSize: 30))
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),



                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

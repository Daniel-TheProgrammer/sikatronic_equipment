import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/LIstOfProduct/list_of_product.dart';
import 'package:sikatronics_equipment/screens/Notification_screen/notification.dart';
import 'package:sikatronics_equipment/widget/translate_text.dart';

class SuccessFullScreen extends StatelessWidget {
  SuccessFullScreen({super.key, required this.valid});

  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: valid ? Color.fromARGB(255, 43, 218, 122) : Colors.pink,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: InkWell(onTap: (){
            Get.to(NotificationScreen());
          },
            child: CircleAvatar(
              radius: Get.width / 6,
              backgroundColor: Colors.white,
              child: Center(
                  child: Icon(
                valid ? Icons.done_rounded : Icons.error_outline,
                size: Get.width / 6,
                color: valid ? Color.fromARGB(150, 43, 218, 122) : Colors.pink,
              )),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        // Text(valid ? 'Thank You!' : 'Ouups',
        //     style: GoogleFonts.poppins(
        //         fontSize: 30,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold)),
        textTranslator(text: valid ? 'successfullScreenHeadText1' : 'successfullScreenHeadText2',fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold),
        const SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.all(10),
          // child: Text(
          //     valid
          //         ? 'Your Request has  been successfully sent please try again'
          //         : 'Your Request has not been successfully sent please try again',
          //     textAlign: TextAlign.center,
          //     style: GoogleFonts.poppins(
          //         fontSize: 20,
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold)),

                    child : textTranslator(text: valid ? 'successfullScreenBodyText1' : 'successfullScreenBodyText2',  fontSize: 20,
        textAlign: TextAlign.center,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)
        ),
      
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment:
              valid ? MainAxisAlignment.center : MainAxisAlignment.spaceAround,
          children: [
            if (!valid)
              Card(
                elevation: 8,
                child: GestureDetector(
                  onTap: (() {
                    Get.to(NotificationScreen());
                  }),
                  child: Container(
                    height: 50,
                    width: Get.width / 2.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      // child: Text('Resend request',
                      //     textAlign: TextAlign.center,
                      //     style: GoogleFonts.poppins(
                      //         fontSize: 17,
                      //         color: valid
                      //             ? Color.fromARGB(150, 43, 218, 122)
                      //             : Colors.pink,
                      //         fontWeight: FontWeight.bold),
                              child: textTranslator(text: "successfullScreenButtonText1",
                              textAlign: TextAlign.center,
                               fontSize: 17,
                              color: valid
                                  ? Color.fromARGB(150, 43, 218, 122)
                                  : Colors.pink,
                              fontWeight: FontWeight.bold
                              )
                              
                              ),
                    ),
                  ),
                ),
              
            Card(
              elevation: 8,
              child: GestureDetector(
                onTap: () {
                  Get.to(() {
                    // ProductList();
                    Get.to(NotificationScreen());
                  });
                },
                child: Container(
                  height: 50,
                  width: Get.width / 2.4,
                  decoration: BoxDecoration(
                      color: valid
                          ? Color.fromARGB(150, 43, 218, 122)
                          : Colors.pink,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Center(
                    // child: Text('Go home page',
                    //     textAlign: TextAlign.center,
                    //     style: GoogleFonts.poppins(
                    //         fontSize: 17,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.bold)),
                        child: textTranslator(text: "successfullScreenButtonText2",
                         fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                             textAlign: TextAlign.center,
                        )
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

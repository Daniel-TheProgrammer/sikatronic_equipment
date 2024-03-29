import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/screens/Learn_More_Screen/learn_more_screen.dart';
import 'package:sikatronics_equipment/screens/SendRequest/send_request_page.dart';
import 'package:sikatronics_equipment/utils/colors.dart';

class ProductModel extends StatefulWidget {
  String label;
  String description;
  String image;
  String learnMore;

  ProductModel(
      {super.key,
      required this.label,
      required this.description,
      required this.image,
      required this.learnMore});

  @override
  State<ProductModel> createState() => _ProductModelState();
}

class _ProductModelState extends State<ProductModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: AppColor.accentColor500),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label.toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: AppColor.accentColor500,
                    ),
                  ),
                  Text(
                    widget.description,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            SendRequestPage(),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.accentColor500,
                          ),
                          child: Center(
                            child: Text(
                              'Send request',
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
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LearnMoreScreen(), arguments: {
                            'category': widget.label,
                            'learnMore': widget.learnMore
                          });
                          // _showMyDialog();
                        },
                        child: Container(
                          height: 40,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1.5,
                              color: AppColor.accentColor500,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'learn more',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: AppColor.accentColor500,
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
          SizedBox(
            width: Get.width / 5,
            height: Get.height / 9,
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  LearnMoreScreen(),
                ],
              ),
            ));
      },
    );
  }
}

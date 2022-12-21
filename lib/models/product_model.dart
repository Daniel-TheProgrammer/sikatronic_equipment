import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/colors.dart';

class ProductModel extends StatelessWidget {
  String label;
  String description;
  String image;

  ProductModel(
      {super.key,
      required this.label,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: AppColor.textColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              Text(
                label.toUpperCase(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                  color: AppColor.textColor,
                ),
              ),
              Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ]),
          ),
          SizedBox(
            width: Get.width / 3,
            height: Get.height / 7,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}

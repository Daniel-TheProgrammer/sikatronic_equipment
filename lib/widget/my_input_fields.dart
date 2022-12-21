import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInputField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final Widget? widget;
  final TextInputType? textInputType;
  final bool allowKeyboard;
  const MyInputField(
      {super.key,
      required this.title,
      required this.hintText,
      this.textInputType,
      this.controller,
      required this.allowKeyboard,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: Get.height / 14,
          width: Get.width / 1.05,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            if (widget != null)
              Container(
                margin: const EdgeInsets.only(right: 6),
                child: widget,
              ),
            Expanded(
              child: TextFormField(
                readOnly: !allowKeyboard,
                autofocus: false,
                keyboardType: textInputType,
                cursorColor: Colors.grey[700],
                controller: controller,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart'
    show Text, Widget, TextAlign, FontWeight, Color, TextStyle;
import 'package:get/get.dart';

// class TranslateText extends StatelessWidget {
//   const TranslateText(Key? key, this.text) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.tr);
//   }
// }

///This is a customizable text widget, if you wish to
///add properties go to the dart file and change there
Widget textTranslator({
  required String text,
  TextAlign? textAlign,
  double? fontSize,
  double? height,
  FontWeight? fontWeight,
  Color? color,
}) {
  return Text(
    text.tr,
    textAlign: textAlign,
    style: TextStyle(
      fontFamily: "Poppins",
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      color: color,
    ),
  );
}

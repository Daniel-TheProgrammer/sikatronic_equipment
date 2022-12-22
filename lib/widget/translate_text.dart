import 'package:flutter/material.dart' show Text, Widget;
import 'package:get/get.dart';

// class TranslateText extends StatelessWidget {
//   const TranslateText(Key? key, this.text) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.tr);
//   }
// }

Widget translateText({required String text}) {
  return Text(text.tr);
}

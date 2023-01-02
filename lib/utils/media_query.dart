import 'package:flutter/material.dart' show MediaQuery, BuildContext;

class MediaQueryContext {
  late final double height;
  late final double width;
  MediaQueryContext.ofHeight(BuildContext context) : height = MediaQuery.of(context).size.height;
  MediaQueryContext.ofWidth(BuildContext context) : width = MediaQuery.of(context).size.width;
}

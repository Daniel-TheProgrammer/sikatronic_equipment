import 'package:flutter/material.dart' show MediaQuery, BuildContext;

class MediaQueryContext {
  late final double height;
  late final double width;
  MediaQueryContext.ofHeight(BuildContext ctx) : height = MediaQuery.of(ctx).size.height;
  MediaQueryContext.ofWidth(BuildContext ctx) : width = MediaQuery.of(ctx).size.width;
}

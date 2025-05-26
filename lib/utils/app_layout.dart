import 'package:flutter/widgets.dart';
class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getHeight(BuildContext context, double pixels) {
    return MediaQuery.of(context).size.height * (pixels / 812); // base height
  }

  static double getWidth(BuildContext context, double pixels) {
    return MediaQuery.of(context).size.width * (pixels / 375); // base width
  }
}

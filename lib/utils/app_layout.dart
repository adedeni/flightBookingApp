import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class AppLayout {
  static getSize (BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getSreenHeight() {
    return Get.height;
  }
  static getSreenWidth() {
    return Get.width;
  }
  static getHeight(double pixels) {
    double x = getSreenHeight()/pixels;
    return getSreenHeight()/x; 
  }
  static getWidth(double pixels) {
    double x = getSreenWidth()()/pixels;
    return getSreenWidth()()/x; 
  }
}
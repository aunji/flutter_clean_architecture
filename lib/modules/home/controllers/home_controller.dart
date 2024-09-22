import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void changeLanguage(String langCode) {
    var locale = Locale(langCode.split('_')[0], langCode.split('_')[1]);
    Get.updateLocale(locale);
  }
}

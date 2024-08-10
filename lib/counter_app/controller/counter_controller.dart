import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  //Create reactive variable.

  RxInt count = 0.obs;
  RxBool isDark = false.obs;

  void increment() {
    count++;
  }
  void decrement() {
    count--;
  }
  void themeChange() {
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value ? ThemeData.dark() : ThemeData.light());
  }
}

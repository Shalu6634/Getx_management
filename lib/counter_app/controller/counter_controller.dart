import 'package:get/get.dart';

class CounterController extends GetxController {
  //Create reactive variable.

  RxInt count = 0.obs;
  RxBool isDark = false.obs;

  void increment() {
    count++;
  }

  void changeTheme() {
    isDark.value = isDark.value;
  }
}

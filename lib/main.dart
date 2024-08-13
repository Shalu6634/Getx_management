import 'package:adv_flutter_ch8/counter_app/controller/counter_controller.dart';
import 'package:adv_flutter_ch8/employee/view/employee_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_app/view/counter_page.dart';
import 'counter_app/view/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
        primary: Colors.teal,
        secondary: Colors.teal,
      )),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.teal,
        ),
      ),
      themeMode:
          counterController.isDark.value ? ThemeMode.dark : ThemeMode.light,
      getPages: [
        GetPage(
            name: '/first',
            page: () => FirstPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/second',
            page: () => HomePage(),
            transition: Transition.leftToRight),
        GetPage(
            name: '/',
            page: () => EmployeeScreen(),
            transition: Transition.leftToRight),
      ],
    );
  }
}

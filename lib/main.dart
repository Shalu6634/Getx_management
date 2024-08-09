import 'package:adv_flutter_ch8/counter_app/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_app/view/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.put(CounterController());
    //return  GetMaterialApp
    return GetMaterialApp(

      darkTheme: ThemeData.light(),
     theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //Using getPages method for multiple page
      getPages: [
        GetPage(
          name: '/',
          page: () => CounterPage(),
        ),
      ],
    );
  }
}

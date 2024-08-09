import 'package:adv_flutter_ch8/counter_app/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});


  @override
  Widget build(BuildContext context) {
    //create object of controller class
    CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black54,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Counter App',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          // Switch(
          //   value:,
          //   onChanged: (value) {
          //     controller.changeTheme();
          //   },
          // ),
        ],
      ),
      body: Center(
          child: Obx(
        () => Text(
          '${controller.count.value}',
          style: TextStyle(fontSize: 30),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.increment();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

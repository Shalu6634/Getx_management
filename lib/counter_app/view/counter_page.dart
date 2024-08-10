import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Theme Change',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        actions: [
          ElevatedButton(
            onPressed: counterController.themeChange,
            child: Text('Change Theme'),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${counterController.count.value}',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                counterController.decrement();
              },
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                counterController.increment();
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

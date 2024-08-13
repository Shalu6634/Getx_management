import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_core/src/get_main.dart';

import '../component/button.dart';
import '../controller/employee_cntroller.dart';

EmployeeController employeeController = Get.put(EmployeeController());

GlobalKey<FormState> formKey = GlobalKey();

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 6,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          '-----Employee Data----',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: employeeController.employeeList.length,
          itemBuilder: (context, index) => Card(
            margin: EdgeInsets.all(10),
            // color: Colors.teal.shade100,
            child: ListTile(
              leading: Text(
                employeeController.employeeList[index].id,
                style: TextStyle(fontSize: 15),
              ),
              title: Text(
                employeeController.employeeList[index].name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                employeeController.employeeList[index].companyName,
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButtonData(context, index),
                  IconButton(
                      onPressed: () {
                        employeeController.employeeList.removeAt(index);
                      },
                      icon: Icon(
                        Icons.delete_outline,
                        size: 25,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: buildFloatingActionButtonContainer(context),
    );
  }


}

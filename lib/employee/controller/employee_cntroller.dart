import 'package:adv_flutter_ch8/employee/modal/employee_modal.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

var txtName = TextEditingController();
var txtId = TextEditingController();
var txtCompany = TextEditingController();

class EmployeeController extends GetxController {
  RxList<EmployeeModal> employeeList = <EmployeeModal>[].obs;

  void addEmployee(Map emp) {
    employeeList.add(EmployeeModal.fromMap(emp));
  }

  void removeEmployeeData(int index, Map emp) {
    employeeList.removeAt(index);
    employeeList.insert(index, EmployeeModal.fromMap(emp));
  }
}

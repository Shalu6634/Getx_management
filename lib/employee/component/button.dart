import 'package:flutter/material.dart';

import '../controller/employee_cntroller.dart';
import '../view/employee_page.dart';

FloatingActionButton buildFloatingActionButtonContainer(BuildContext context) {
  return FloatingActionButton(
    backgroundColor: Colors.indigo,
    onPressed: () {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Form(
            key: formKey,
            child: AlertDialog(
              title: const Text(
                'Enter Employee Data ',
                style: TextStyle(fontSize: 30),
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField(controller: txtName, label: 'Name'),
                    SizedBox(height: 10,),
                    buildTextFormField(controller: txtId, label: 'id'),
                    SizedBox(height: 10,),
                    buildTextFormField(
                        controller: txtCompany, label: 'company'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Map emp = {
                        'id': txtId.text,
                        'name': txtName.text,
                        'companyName': txtCompany.text,
                      };
                      employeeController.addEmployee(emp);
                      txtName.clear();
                      txtId.clear();
                      txtCompany.clear();
                      Navigator.pop(context);
                    }),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancle',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          );
        },
      );
    },
    child: Icon(Icons.add),
  );
}

TextFormField buildTextFormField(
    {required TextEditingController controller, required String label}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: label,
      labelStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
      // enabledBorder: OutlineInputBorder(),
      // focusedBorder: OutlineInputBorder(),
    ),
  );
}

IconButton IconButtonData(BuildContext context, int index) {
  return IconButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Enter Employee Data',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
               children: [
                  buildTextFormField(
                      controller: txtName, label: 'Name'),
                  SizedBox(
                    height: 5,
                  ),
                  buildTextFormField(
                      controller: txtId, label: 'Id'),
                  SizedBox(
                    height: 5,
                  ),
                  buildTextFormField(

                      controller: txtCompany,
                      label: 'company name'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  employeeController.removeEmployeeData(index, {
                    'id': txtId.text,
                    'name': txtName.text,
                    'companyName': txtCompany.text,
                  });
                  Navigator.pop(context);
                },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancle',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          );
        },
      );
    },
    icon: Icon(
      Icons.edit_outlined,
      size: 15,
    ),
  );
}
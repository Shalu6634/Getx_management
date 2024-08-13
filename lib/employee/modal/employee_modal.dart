class EmployeeModal {
  late String id;
  late String name, companyName;

  EmployeeModal(
      {required this.id, required this.name, required this.companyName});

  factory EmployeeModal.fromMap(Map m1) {
    return EmployeeModal(
        id: m1['id'], name: m1['name'], companyName: m1['companyName']);
  }
}

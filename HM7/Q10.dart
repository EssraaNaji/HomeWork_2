class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }

  void displayInfo() {
    print('Employee: $name, ID: $id, Salary: ${calculateSalary()}');
  }
}

class FullTime extends Employee {
  double bonus;

  FullTime(super.name, super.id, super.salary, this.bonus) ;

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTime extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTime(super.name, super.id,super.salary , this.hourlyRate, this.hoursWorked) ;

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  FullTime fullTimeEmp = FullTime("essraa", 101, 5000, 1000);
  PartTime partTimeEmp = PartTime("naji", 102, 20, 80 ,7);

  fullTimeEmp.displayInfo();
  partTimeEmp.displayInfo();
}

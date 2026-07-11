abstract class Employee {
  String name;

  Employee(this.name);

  double calculateSalary();

  void showSalary() {
    print('$name earns ${calculateSalary()} baht');
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() => monthlySalary;
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() => hourlyRate * hoursWorked;
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('Attakrrit', 49000),
    PartTimeEmployee('Monmanat', 200, 67),
    FullTimeEmployee('Kasidit', 15000),
  ];

  for (var e in employees) {
    e.showSalary();
  }
}
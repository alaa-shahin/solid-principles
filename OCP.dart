void main() {
  Manager emp1 = Manager ();
    emp1.name = 'Manager';
    emp1.id = '123';
    emp1.basicSalary = 900;
    print(emp1.toPrint());
    print('Bonus ${emp1.calcHoursBouns(5)}');
    print('-----------');
  RegularEmp emp2 = RegularEmp();
    emp2.name = 'RegularEmp';
    emp2.id = '123456';
    emp2.basicSalary = 900;
    print(emp2.toPrint());
    print('Bonus ${emp2.calcHoursBouns(5)}');
}

abstract class Employee { 
  String id;
  String name;
  double basicSalary; 
  
 double calcHoursBouns(int hours);

 String toPrint(){
  return('ID = ${id} \nname = ${name}');
 }
}

class Manager extends Employee {
  double calcHoursBouns(int hours){
    return ((basicSalary / 30) / 8 ) * hours * 2;
  }
}

class RegularEmp extends Employee {
  double calcHoursBouns(int hours){
    return ((basicSalary / 30) / 8 ) * hours;
  }
}



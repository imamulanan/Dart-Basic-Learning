abstract class Shape {
  void area();
}

class Rectangle extends Shape {
  double weight, height;
  Rectangle(this.weight, this.height);

  @override
  void area() {
    double area = weight * height;
    print("Area of Rectangle: $area");
  }
}

// real life example

abstract class Employee {
  String name;
  Employee(this.name);
  void work();
}

class Developer extends Employee {
  Developer(String name) : super(name);

  @override
  void work() {
    print("$name is writing code");
  }
}

class Designer extends Employee {
  Designer(String name) : super(name);

  @override
  void work() {
    print("$name is designing UI");
  }
}

void main() {
  Rectangle rect = Rectangle(5, 10);
  rect.area();




  Employee emp1 = Developer("Anan");
  Employee emp2 = Designer("Arif");

  emp1.work();
  emp2.work();
}

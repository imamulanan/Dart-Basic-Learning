class Car {
  String brand; // property
  int year; // property

  Car(this.brand, this.year);

  Car.usedCar(this.brand, this.year){
    print("This is a used car");
  }

  void showDetails() {
    // method
    print("Brand: $brand, Year: $year");
  }
}


class Person {
  String _name = "Anan";

  String get name {
    return _name;
  }
}


class Person2{
  String _name = "";

  void set name(String newname){
    _name = newname;
  }

  // String get name {
  //   return _name;
  // }

  String get name => _name; // shorthand getter
}

void main() {
  Car myCar = Car("Toyota", 2020);
  print(myCar.brand);
  myCar.showDetails();

  Car usedCar = Car.usedCar("Honda", 2015);
  print(usedCar.brand);
  usedCar.showDetails();

  Car anotherCar = Car("Ford", 2018);
  anotherCar.showDetails();


  Person person = Person();
  print("Person's name is: ${person.name}");

  Person2 person2 = Person2();
  person2.name = "John";
  print("Person2's name is: ${person2.name}");
}

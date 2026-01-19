void main() {
  print("Hello World");
  print(10);
  print(3.14);
  print(true);
  print("Dart Programming");

  String name = "Anan";
  print(name);

  int age = 25;
  print(age);
  print("My age is $age");

  print(name + " is " + age.toString() + " years old.");

  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print(fruits);
  print(fruits[1]);

  fruits.add("Orange");
  print(fruits);

  fruits.remove("Banana");
  print(fruits);

  print(fruits.length);

  for (var fruit in fruits) {
    print(fruit);
  }

  Map<String, dynamic> student = {
    "name": "Anan",
    "age": 25,
    "isStudent": true,
    "dept": "CSE",
  };

  print(student);
  student["cgpa"] = 3.489;
  print(student);
}

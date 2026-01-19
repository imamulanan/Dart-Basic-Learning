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
}

# 📌 Object-Oriented Programming (OOP) in Dart

## Class & Object — Basic → Clear → Practical

---

## 1️⃣ OOP কী? (একদম সহজভাবে)

👉 **OOP (Object-Oriented Programming)** হলো এমন একটা programming style যেখানে আমরা real-life জিনিসকে code এ model করি।

🧠 Real life চিন্তা করো:

* Car
* Student
* User
* Product

এই সবকিছুই **object**
আর object বানানোর নকশা/ডিজাইন হলো **class**

### 👉 সহজ ফর্মুলা

* **Class = Blueprint / Design**
* **Object = Real thing created from that design**

---

## 2️⃣ Class কী?

👉 **Class** হলো একটা template যেখানে আমরা বলি:

* এই object এর কী কী data থাকবে (properties)
* কী কী কাজ করতে পারবে (methods)

### 🔹 Simple Class Example

```dart
class Car {
  String brand = "Toyota"; // property
  int year = 2020;         // property

  void showDetails() {     // method
    print("Brand: $brand, Year: $year");
  }
}
```

🔍 এখানে কী হচ্ছে?

* `brand`, `year` → data
* `showDetails()` → কাজ (function)

---

## 3️⃣ Object কী?

👉 **Object** হলো class থেকে তৈরি করা real instance।

মানে:

* Class বলছে “Car কেমন হবে”
* Object হলো “এই specific car”

### 🔹 Object তৈরি করা

```dart
void main() {
  Car myCar = Car();   // object create
  print(myCar.brand); // Toyota
  myCar.showDetails();
}
```

📌 Important:

* `Car()` → constructor call
* `myCar` → object
* `.` দিয়ে property/method access

---

## 4️⃣ Constructor কী? (VERY IMPORTANT)

- 👉 **Constructor** হলো class এর special function
- 👉 Object create হওয়ার সময় automatically call হয়
- 👉 Data initialize করতে ব্যবহার হয়

### 🔹 Custom Constructor

```dart
class Car {
  String brand;
  int year;

  Car(this.brand, this.year); // constructor

  void showDetails() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  Car car1 = Car("Honda", 2022);
  car1.showDetails();
}
```

🧠 এখানে:

* `this.brand` → class property
* `brand` → constructor parameter

---

## 5️⃣ Named Constructor (Multiple ways to create object)

👉 যখন একই class দিয়ে ভিন্ন ভিন্নভাবে object বানাতে চাই

```dart
class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  Car.usedCar(this.brand, this.year) {
    print("This is a used car");
  }

  void showDetails() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  Car c1 = Car("Toyota", 2023);
  Car c2 = Car.usedCar("Ford", 2015);
}
```

📱 Flutter এ API data vs local data handle করতে খুব কাজে লাগে।

---

## 6️⃣ Getter & Setter (Data Control 🔐)

### 🔹 Private Variable কী?

👉 `_` দিলে variable **private** হয় (class এর বাইরে access করা যায় না)

```dart
class Person {
  String _name = "Arif";
}
```

---

### 🔹 Getter

```dart
class Person {
  String _name = "Arif";

  String get name {
    return _name;
  }
}

void main() {
  Person p = Person();
  print(p.name); // Arif
}
```

👉 Outside থেকে safe way তে data read

---

### 🔹 Setter

```dart
class Person {
  String _name = "";

  void set name(String newName) {
    _name = newName;
  }

  String get name => _name;
}

void main() {
  Person p = Person();
  p.name = "Masum";   // looks like property
  print(p.name);      // Masum
}
```

📌 Flutter form validation এ খুব গুরুত্বপূর্ণ।

---

## 7️⃣ Real-life Example (Student Class)

```dart
class Student {
  String name;
  int marks;

  Student(this.name, this.marks);

  void display() {
    print("Student: $name, Marks: $marks");
  }
}

void main() {
  Student s1 = Student("Arif", 95);
  Student s2 = Student("Masum", 88);

  s1.display();
  s2.display();
}
```

👉 Flutter list view এ student list দেখাতে exactly এই pattern ব্যবহার হবে।

---

## 8️⃣ Common Beginner Mistakes ❌

- ❌ Class আর object এক মনে করা
- ❌ Constructor parameter ভুল order
- ❌ Private variable বাইরে access করা
- ❌ Object create না করে method call করা

---

## 9️⃣ Practice Tasks (Answer করার মতো গুরুত্বপূর্ণ)

### ✅ Task 1: Book Class

```dart
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetails() {
    print("Title: $title, Author: $author, Price: $price");
  }
}
```

---

### ✅ Task 2: Rectangle Area

```dart
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }
}
```

---

### ✅ Task 3: Employee

```dart
class Employee {
  String name;
  int id;

  Employee(this.name, this.id);

  void display() {
    print("Name: $name, ID: $id");
  }
}
```

---

## 🔚 Final Summary (মাথায় রাখার মতো)

- ✔ OOP = real-life based programming
- ✔ Class = blueprint
- ✔ Object = real instance
- ✔ Constructor = object initialize
- ✔ Named constructor = multiple creation styles
- ✔ Getter/Setter = secure data handling

---
# 📌 OOP Advanced in Dart — Complete Guide

এটা **Class & Object এর পরের logical step**।
Topics: **Inheritance, Polymorphism, Encapsulation, Abstraction**

---

## 1️⃣ Inheritance (উত্তরাধিকার)

### 👉 Meaning

* এক class অন্য class এর **properties & methods reuse** করতে পারে।
* Parent class = Super / Base
* Child class = Subclass / Derived

### 🔹 Syntax & Example

```dart id="inherit1"
class Vehicle {
  void start() {
    print("Vehicle started");
  }
}

class Car extends Vehicle { // Car inherits Vehicle
  void honk() {
    print("Car horn beep!");
  }
}

void main() {
  Car myCar = Car();
  myCar.start(); // inherited from Vehicle
  myCar.honk();  // Car's own method
}
```

✅ Key: `extends` keyword → inheritance

🧠 Real-life Flutter use:

* Base widget class থেকে custom widgets তৈরি করতে inheritance use করা হয়।

---

## 2️⃣ Polymorphism (বহু রূপ)

### 👉 Meaning

* **Same method, different behavior** different classes এ।
* Dart এ এটা mostly **method overriding** দিয়ে করা হয়।

### 🔹 Example

```dart id="poly1"
class Animal {
  void sound() {
    print("Some sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Bark");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Meow");
  }
}

void main() {
  Animal a1 = Dog();
  Animal a2 = Cat();

  a1.sound(); // Bark
  a2.sound(); // Meow
}
```

- ✅ `@override` → parent class এর method change করার জন্য
- ✅ Runtime polymorphism → program চলাকালীন decide হয় কোন method call হবে

---

## 3️⃣ Encapsulation (ডাটা সংরক্ষণ)

### 👉 Meaning

* Data hide করা, access control রাখা
* Dart এ `_variable` দিয়ে private declare হয়
* Getter & Setter দিয়ে control করা হয়

### 🔹 Example

```dart id="encap1"
class BankAccount {
  double _balance = 0; // private

  double get balance => _balance; // read-only access

  void deposit(double amount) {
    if(amount > 0) _balance += amount;
  }

  void withdraw(double amount) {
    if(amount <= _balance) _balance -= amount;
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.deposit(1000);
  print(acc.balance); // 1000
  acc.withdraw(500);
  print(acc.balance); // 500
}
```

✅ Protects internal data from unauthorized access
🧠 Flutter use: form input validation, secure data handling

---

## 4️⃣ Abstraction (Abstract Class)

### 👉 Meaning

* Blueprint / template class
* **Cannot create object** of abstract class
* Contains **abstract methods** (method signature only)

### 🔹 Example

```dart id="abs1"
abstract class Shape {
  void area(); // abstract method
}

class Rectangle extends Shape {
  double length, width;
  Rectangle(this.length, this.width);

  @override
  void area() {
    print("Rectangle area: ${length * width}");
  }
}

void main() {
  Rectangle r = Rectangle(5, 3);
  r.area(); // Rectangle area: 15
}
```

✅ Forces child class to implement abstract methods

---

### 🔹 Real-life Example

```dart id="abs2"
abstract class Employee {
  String name;
  Employee(this.name);
  void work(); // abstract method
}

class Developer extends Employee {
  Developer(String name): super(name);

  @override
  void work() {
    print("$name is writing code");
  }
}

class Designer extends Employee {
  Designer(String name): super(name);

  @override
  void work() {
    print("$name is designing UI");
  }
}

void main() {
  Employee e1 = Developer("Arif");
  Employee e2 = Designer("Masum");

  e1.work(); // Arif is writing code
  e2.work(); // Masum is designing UI
}
```

---

### Extra Note: `@override` in Dart

#### 1️⃣ Meaning

`@override` হলো annotation যা Dart কে বলে যে তুমি parent class এর method কে child class এ re-define বা change করতে চাচ্ছো।

* এটি optional technically, কিন্তু strongly recommended।
* Code readability ও safety এর জন্য ভালো।
* যদি তুমি parent method ঠিকমতো override না করো, Dart compile time warning দিবে।

#### 2️⃣ কখন ব্যবহার করি?

* Child class এ parent class method পরিবর্তন করতে চাইলে
* Abstract class method implement করতে গেলে
* Interface method implement করলে

---
## 5️⃣ Common Beginner Mistakes ❌

* Object create করা abstract class থেকে
* `@override` না ব্যবহার করা
* Private variable direct access করা
* Constructor inheritance ভুল করা

---

## 6️⃣ Practice Tasks (MUST DO)

1. **Class Animal** → Dog, Cat extends → override method `sound()`
2. **Class Vehicle** → Car, Bike extends → add unique method + inherited method call
3. **Abstract class Shape** → Circle, Square implement `area()` method
4. **Class Bank** → Encapsulation → private balance + deposit/withdraw methods

---

## 🔚 Summary Table

| Concept       | Key Points                                               |
| ------------- | -------------------------------------------------------- |
| Inheritance   | `extends`, reuse parent class properties/methods         |
| Polymorphism  | Same method, different behavior (`@override`)            |
| Encapsulation | Private variables `_`, getter & setter control           |
| Abstraction   | `abstract class`, abstract methods, cannot create object |

---


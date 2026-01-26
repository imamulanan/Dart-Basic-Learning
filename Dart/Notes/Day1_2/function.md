## 📌 Functions in Dart — Complete Guide

Functions হলো **reusable code blocks** যা কোনো specific task perform করে।

* একবার লিখো → বারবার ব্যবহার করো
* Input নিতে পারে → Output দিতে পারে

🧠 সহজভাবে:

> Function = “Mini program inside program”

---

### 1️⃣ Normal Function

**Syntax**

```dart
returnType functionName(parameters) {
  // code
  return value; // optional
}
```

**Example 1: No parameter, no return**

```dart
void greet() {
  print("Hello Arif");
}

void main() {
  greet(); // call function
}
```

**Example 2: With parameters and return**

```dart
int add(int a, int b) {
  return a + b;
}

void main() {
  int sum = add(5, 3);
  print(sum); // 8
}
```

✅ Key point: Normal function can have **parameters** and **return value**

---

### 2️⃣ Arrow Function (=>)

* Short-hand syntax for **single-expression functions**

```dart
int square(int x) => x * x;

void main() {
  print(square(5)); // 25
}
```

* `=>` means “return this expression”
* Only works for **single expression**
* Cleaner & more readable

---

### 3️⃣ Optional Parameters

**Positional Optional**

```dart
void greet([String? name]) {
  print("Hello ${name ?? 'Guest'}");
}

void main() {
  greet();      // Hello Guest
  greet("Arif"); // Hello Arif
}
```

* `[ ]` → optional positional
* `??` → default value if null

**Named Optional**

```dart
void greet({String? name, int? age}) {
  print("Hello ${name ?? 'Guest'}, Age: ${age ?? 0}");
}

void main() {
  greet(name: "Arif", age: 22); 
  greet(); // default values
}
```

* `{ }` → named optional
* Call time এ **parameter name specify** করতে হয়
* More readable

---

### 4️⃣ Function Scope

```dart
int a = 10; // global

void show() {
  int b = 20; // local
  print(a + b); // 30
}
```

* **Global variable** → function বাইরে declare
* **Local variable** → function ভিতরে declare
* Local > Global precedence

---

### 5️⃣ Real-life Examples

**Calculator Function**

```dart
double calculateArea(double radius) {
  return 3.1416 * radius * radius;
}

void main() {
  print(calculateArea(5)); // 78.54
}
```

**Login Check Function**

```dart
bool checkLogin(String email, String password) {
  if(email == "test@gmail.com" && password == "1234") return true;
  return false;
}

void main() {
  print(checkLogin("test@gmail.com", "1234")); // true
}
```

---

### 6️⃣ Async & Await Functions

* Dart এ **async-await** ব্যবহার হয় asynchronous operations handle করতে
* যেমন: API call, database fetch, delayed task

```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // simulate network
  return "Data fetched";
}

void main() async {
  print("Start");
  String data = await fetchData();
  print(data); // Data fetched
  print("End");
}
```

**Key Points:**

* `async` → function asynchronous হবে
* `await` → wait until future completes
* Must use `Future<T>` as return type

---

### 7️⃣ Common Beginner Mistakes ❌

* Function define করে **call না করা**
* Return type mismatch
* Parameter order ভুল
* Local variable scope ভুল বোঝা

---

### 8️⃣ Practice Tasks (MUST DO)

**Task 1: Greet User**

```dart
// Function greet(name) → print Hello name
```

**Task 2: Sum of two numbers**

```dart
// Function add(a, b) → return sum
```

**Task 3: Check Even/Odd**

```dart
// Function isEven(number) → return true/false
```

**Task 4: Circle Area**

```dart
// Function calculateArea(radius) → return area
```

---

### 🔚 Summary

| Topic               | Key Points                                           |
| ------------------- | ---------------------------------------------------- |
| Normal Function     | Can have parameters, return value, reusable          |
| Arrow Function      | Short single-expression syntax                       |
| Optional Parameters | `[ ]` positional optional, `{ }` named optional      |
| Named Parameters    | Call time must mention parameter name                |
| Async / Await       | For asynchronous tasks, network calls, delayed tasks |

---



# 📌 Variables & Data Types (Dart) — Full & Clear Explanation (Bangla)

---

## 1️⃣ Variable কী?

👉 **Variable** হলো data রাখার জন্য একটি container (বাক্স)।

🧠 সহজভাবে ভাবো
**Variable = নাম দেওয়া বাক্স**
এই বাক্সে data রাখি → পরে দরকার হলে ব্যবহার করি।

```dart
int age = 22;
```

🔍 এখানে—

* `int` → Data Type
* `age` → Variable নাম
* `22` → Value

📌 মানে:
👉 **age নামের বাক্সে 22 রাখা হয়েছে**

---

## 2️⃣ Data Type কেন দরকার?

Data type বলে দেয়—

* কী ধরনের data রাখবো
* কত memory লাগবে
* কী operation করা যাবে

📌 Dart-এর common data types:

* `int` → পূর্ণসংখ্যা (10, 20)
* `double` → দশমিক (3.14)
* `String` → টেক্সট ("Hello")
* `bool` → true / false

---

## 3️⃣ `var` (Type Inference)

### 🔹 `var` কী?

`var` ব্যবহার করলে **Dart নিজেই data type বুঝে নেয়**।

```dart
var name = "Arif";
var age = 22;
```

👉 Dart internally বুঝে নেয়:

* `name` → String
* `age` → int

⚠️ **Important Rule**
একবার value assign হলে → type change করা যাবে না।

```dart
var x = 10;
x = 20;      // ✅ OK
x = "Hi";    // ❌ ERROR
```

📌 Best Practice:

> `var` = clean code + safe
> 👉 Flutter/Dart এ সবচেয়ে বেশি ব্যবহার হয়

---

## 4️⃣ `dynamic` (⚠️ Danger Zone)

### 🔹 `dynamic` কী?

`dynamic` variable এর **type fixed না**।

```dart
dynamic value = 10;
value = "Hello";
value = true;
```

👉 একই variable এ:

* int
* String
* bool
  সব রাখা যায়

⚠️ Problem কী?

* Compile time এ error ধরা পড়ে না
* Runtime এ crash হতে পারে

📌 Example:

```dart
dynamic x = "Hello";
print(x.length); // OK

x = 10;
print(x.length); // ❌ Runtime Error
```

📌 Beginner দের জন্য Rule:

> ❌ `dynamic` যত কম ব্যবহার করবে → তত ভালো

---

## 5️⃣ `final` (Runtime Constant)

### 🔹 `final` কী?

Value **একবার set হলে আর change করা যায় না**
কিন্তু value **program চলার সময়** আসতে পারে।

```dart
final country = "Bangladesh";
final time = DateTime.now();
```

👉 `DateTime.now()` runtime এ আসে
👉 তাই `final` allowed

❌ Change করা যাবে না:

```dart
country = "India"; // ERROR
```

📌 Use case:

* API response
* Logged user info
* Current time

---

## 6️⃣ `const` (Compile-time Constant)

### 🔹 `const` কী?

Value **compile করার সময়ই fixed থাকতে হবে**।

```dart
const pi = 3.1416;
```

❌ Runtime value allowed না:

```dart
const time = DateTime.now(); // ERROR
```

📌 Use case:

* Fixed numbers
* Colors
* App-wide constants

---

## 7️⃣ `final` vs `const` (Exam + Interview Killer 🔥)

| Feature       | final            | const        |
| ------------- | ---------------- | ------------ |
| Constant type | Runtime          | Compile-time |
| Value কখন আসে | Program চলার সময় | আগেই জানা    |
| Flexibility   | বেশি             | কঠিন         |
| Flutter usage | বেশি             | কম           |

🧠 **Golden Rule (মনে রাখো)**

* 👉 আগে থেকেই জানা → `const`
* 👉 program চলার সময় আসে → `final`

---

## ✅ Flutter Developer হিসেবে Recommendation

👉 **80% সময় ব্যবহার করো**

```dart
var
final
```

👉 **Avoid করো**

```dart
dynamic (যদি বাধ্য না হও)
```

---

# 6️⃣ Basic Data Types (Dart)


## 🔹 `int` (Integer)

👉 **পূর্ণ সংখ্যা (Whole Number)**
👉 দশমিক থাকে না

```dart
int age = 22;
int year = 2026;
```

📌 Use case:

* বয়স
* আইডি
* কাউন্টার, লুপ index

---

## 🔹 `double` (Decimal)

👉 **ভগ্নাংশ / দশমিক সংখ্যা**

```dart
double cgpa = 3.75;
double price = 99.99;
```

📌 Use case:

* CGPA
* Price
* Measurement

⚠️ Note:
Dart-এ `int` + `double` = `double`

---

## 🔹 `String` (Text)

👉 টেক্সট বা লেখা রাখার জন্য

```dart
String name = "Anan";
String dept = 'CSE';
```

👉 Single (`' '`) বা Double (`" "`) quotes—দুটোই valid

---

### 🔹 String Interpolation (VERY IMPORTANT 🔥)

```dart
print("My name is $name");
```

👉 Variable সরাসরি string এর ভিতরে বসানো যায়

Expression হলে:

```dart
print("Age next year: ${age + 1}");
```

📌 Flutter-এ UI text বানাতে এটা সবচেয়ে বেশি লাগে

---

## 🔹 `bool` (True / False)

👉 Logical value

```dart
bool isStudent = true;
bool isLoggedIn = false;
```

👉 Condition এ ব্যবহার হয়

```dart
if (isStudent) {
  print("Access allowed");
}
```

📌 Use case:

* Login system
* Permission
* Toggle switch

---

# 7️⃣ List (Ordered Collection)


## 🔹 List কী?

👉 একাধিক data একসাথে রাখে
👉 **Index থাকে (0 থেকে শুরু)**
👉 Order maintain করে

```dart
List<String> fruits = ["Apple", "Banana", "Mango"];
```

### 🔹 Access element

```dart
print(fruits[0]); // Apple
```

⚠️ Index ভুল হলে → Runtime error

---

## 🔹 List Operations

```dart
fruits.add("Orange");        // Add
fruits.remove("Banana");    // Remove
print(fruits.length);       // Length
```

### 🔹 Loop through List

```dart
for (var fruit in fruits) {
  print(fruit);
}
```

📌 Flutter-এ:

* ListView
* Menu items
* API data
  সবই List দিয়ে হয়

---

# 8️⃣ Set (Unique Collection)

---

## 🔹 Set কী?

- 👉 **Duplicate value নেয় না**
- 👉 Order guarantee করে না
- 👉 Fast lookup

```dart
Set<int> numbers = {1, 2, 3, 3};
```

👉 Output হবে:

```
1, 2, 3
```

### 🔹 Add value

```dart
numbers.add(4);
```

📌 Use case:

* Unique skills
* Unique IDs
* Tags

---

# 9️⃣ Map (Key – Value Pair)

## 🔹 Map কী?

- 👉 Data থাকে **key → value** আকারে
- 👉 Dictionary / JSON type structure

```dart
Map<String, dynamic> student = {
  "name": "Anan",
  "age": 22,
  "dept": "CSE"
};
```

### 🔹 Access value

```dart
print(student["name"]);
```

### 🔹 Add new data

```dart
student["cgpa"] = 3.75;
```

📌 Flutter-এ API response প্রায় সবসময় Map হয়

---

## 🔹 Loop Map

```dart
student.forEach((key, value) {
  print("$key : $value");
});
```

---

# ❌ Common Beginner Mistakes (VERY IMPORTANT ⚠️)

- ❌ `var` আর `dynamic` এক মনে করা
- ❌ `const` দিয়ে runtime value রাখা
- ❌ List index ভুল ধরা (`fruits[5]`)
- ❌ Map key এর type mismatch
- ❌ `null` handling না বোঝা

---

# ✅ Practice Task (MUST DO 💪)

তোমার দেওয়া task **100% correct** ✔️
আমি শুধু annotated করে দিচ্ছি:

```dart
void main() {
  var name = "Arif";                // inferred as String
  final university = "PSTU";        // runtime constant
  const country = "Bangladesh";     // compile-time constant

  int age = 22;
  double cgpa = 3.75;
  bool isStudent = true;

  List<String> skills = ["Flutter", "Dart", "SQL"];

  Map<String, dynamic> profile = {
    "name": name,
    "age": age,
    "skills": skills
  };

  print(profile);
}
```

📌 Output হবে Map format এ (JSON-like)

---

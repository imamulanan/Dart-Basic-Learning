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


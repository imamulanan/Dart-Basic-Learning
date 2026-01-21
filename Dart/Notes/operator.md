# 📌 Operators (Dart)

### Types of Operators

* Arithmetic Operators
* Relational Operators
* Logical Operators
* Assignment Operators

📌 **Arithmetic Operators** হলো programming-এর ভিত্তি।
এগুলো না জানলে কোনো logic, condition বা loop ঠিকভাবে বানানো যায় না।

---

# 📌 Arithmetic Operators (Dart) — Notes

---

## 1️⃣ Operator কী?

👉 **Operator** হলো এমন symbol যেগুলো দিয়ে আমরা:

* Calculation করি
* Value পরিবর্তন করি

🧠 সহজভাবে:
**Operator = কাজ করার চিহ্ন**

---

## 2️⃣ Arithmetic Operator কী?

👉 যেসব operator দিয়ে **গণিতের কাজ** করা হয়:

* যোগ
* বিয়োগ
* গুণ
* ভাগ

---

## 3️⃣ Arithmetic Operators List

| Operator | Name             | Example  |
| -------- | ---------------- | -------- |
| `+`      | Addition         | `a + b`  |
| `-`      | Subtraction      | `a - b`  |
| `*`      | Multiplication   | `a * b`  |
| `/`      | Division         | `a / b`  |
| `~/`     | Integer Division | `a ~/ b` |
| `%`      | Modulus          | `a % b`  |

---

## 4️⃣ Operators with Examples

### 🔹 Addition (`+`)

```dart
int a = 10;
int b = 5;
print(a + b); // 15
```

👉 String এর সাথেও কাজ করে (concatenation):

```dart
String first = "Imamul";
String last = " Anan";
print(first + last); 
```

---

### 🔹 Subtraction (`-`)

```dart
print(a - b); // 5
```

---

### 🔹 Multiplication (`*`)

```dart
print(a * b); // 50
```

---

### 🔹 Division (`/`)

```dart
print(a / b); // 2.0
```

⚠️ **Note:**
`/` সবসময় **double** result দেয়।

---

### 🔹 Integer Division (`~/`)

```dart
print(a ~/ b); // 2
```

👉 দশমিক অংশ বাদ দিয়ে শুধু integer রাখে।

---

### 🔹 Modulus (`%`)

```dart
print(a % b); // 0
```

👉 ভাগশেষ (remainder) বের করে।

📌 **Use case: Even / Odd check**

```dart
if (a % 2 == 0) {
  print("Even");
}
```

---

## 5️⃣ Operator Precedence (Order of Execution)

👉 Dart নিচের order এ হিসাব করে:

1. `*`, `/`, `~/`, `%`
2. `+`, `-`

### Example:

```dart
print(10 + 5 * 2); // 20
```

### With Brackets:

```dart
print((10 + 5) * 2); // 30
```

👉 Bracket দিলে priority change হয়।

---

## 6️⃣ Increment & Decrement

### 🔹 Increment (`++`)

```dart
int x = 5;
x++;
print(x); // 6
```

---

### 🔹 Decrement (`--`)

```dart
x--;
print(x); // 5
```

---

### 🔹 Pre vs Post Increment

```dart
int x = 5;
print(++x); // 6 (আগে বাড়ে)
```

```dart
int y = 5;
print(y++); // 5 (পরে বাড়ে)
```

---

## 7️⃣ Arithmetic with Variables

```dart
int total = 100;
int discount = 20;

int finalPrice = total - discount;
print(finalPrice); // 80
```

---

## 8️⃣ Common Beginner Mistakes ❌

* `/` দিয়ে integer result আশা করা
* `%` না বুঝে ব্যবহার করা
* Bracket না দেওয়া
* `++x` আর `x++` গুলিয়ে ফেলা

---

## 9️⃣ Practice Tasks

### Task 1:

```dart
int a = 20;
int b = 3;

print(a + b);
print(a - b);
print(a * b);
print(a / b);
print(a ~/ b);
print(a % b);
```

### Task 2: Even / Odd Check

```dart
int number = 7;

if (number % 2 == 0) {
  print("Even");
} else {
  print("Odd");
}
```

---

## 🔚 Summary

- ✔ Arithmetic operators
- ✔ `/` vs `~/`
- ✔ `%` ব্যবহার
- ✔ Operator precedence
- ✔ Increment & decrement

---
---

# 📌 Relational Operators (Dart) — Notes

📌 **Relational Operators** কে comparison operators ও বলা হয়।
এগুলো ব্যবহার করে আমরা দুইটা value **compare** করি।
এই operators না বুঝলে **if–else, loop, login check**—কিছুই ঠিকভাবে করা যায় না।

---

## 1️⃣ Relational Operator কী?

👉 **Relational Operator** দুইটা value compare করে
এবং result হিসেবে **true** বা **false** দেয়।

🧠 সহজ ভাষায়:

* এই দুইটা কি সমান?
* একটা কি আরেকটার থেকে বড়?
* একটা কি ছোট?

📌 Result সবসময় **bool** হয়।

---

## 2️⃣ Relational Operators List

| Operator | Meaning               | Example  |
| -------- | --------------------- | -------- |
| `==`     | Equal to              | `a == b` |
| `!=`     | Not equal             | `a != b` |
| `>`      | Greater than          | `a > b`  |
| `<`      | Less than             | `a < b`  |
| `>=`     | Greater than or equal | `a >= b` |
| `<=`     | Less than or equal    | `a <= b` |

---

## 3️⃣ Operators with Examples

### 🔹 Equal to (`==`)

```dart
int a = 10;
int b = 10;

print(a == b); // true
```

⚠️ **Common Mistake**

```dart
a = b; // ❌ assignment, comparison না
```

---

### 🔹 Not Equal (`!=`)

```dart
print(a != b); // false
```

---

### 🔹 Greater Than (`>`)

```dart
int age = 20;
print(age > 18); // true
```

---

### 🔹 Less Than (`<`)

```dart
print(age < 18); // false
```

---

### 🔹 Greater Than or Equal (`>=`)

```dart
print(age >= 18); // true
```

---

### 🔹 Less Than or Equal (`<=`)

```dart
print(age <= 18); // false
```

---

## 4️⃣ Relational Operators with if–else

```dart
int marks = 75;

if (marks >= 40) {
  print("Passed");
} else {
  print("Failed");
}
```

📌 Relational operator ছাড়া `if` কাজ করে না।

---

## 5️⃣ Relational Operator with bool

```dart
bool isLoggedIn = true;

if (isLoggedIn == true) {
  print("Welcome");
}
```

### ✅ Better Way

```dart
if (isLoggedIn) {
  print("Welcome");
}
```

👉 Cleaner এবং professional code।

---

## 6️⃣ Relational Operator with String

```dart
String password = "1234";

if (password == "1234") {
  print("Access granted");
} else {
  print("Wrong password");
}
```

⚠️ **Note:**
String comparison **case-sensitive**।

---

## 7️⃣ Real-Life Use Cases

### ✔ Age Verification

```dart
int age = 17;

if (age < 18) {
  print("Not allowed");
}
```

---

### ✔ Login Check

```dart
String email = "test@gmail.com";

if (email != "") {
  print("Email entered");
}
```

---

### ✔ Exam Result

```dart
int score = 85;

if (score >= 80) {
  print("A+");
}
```

---

## 8️⃣ Common Beginner Mistakes ❌

* `=` আর `==` গুলিয়ে ফেলা
* Number এর সাথে String compare করা
* Relational operator ছাড়া `if` লেখা
* Result যে `bool` হয় সেটা না বোঝা

---

## 9️⃣ Practice Tasks

### Task 1: Age Check

```dart
int age = 21;

if (age >= 18) {
  print("Adult");
} else {
  print("Minor");
}
```

---

### Task 2: Largest Number

```dart
int a = 10;
int b = 20;

if (a > b) {
  print("a is larger");
} else {
  print("b is larger");
}
```

---

### Task 3: Password Match

```dart
String input = "flutter";

if (input == "flutter") {
  print("Correct");
} else {
  print("Incorrect");
}
```

---

## 🔚 Summary

- ✔ Relational operator কী
- ✔ সব comparison operators
- ✔ if–else এর সাথে ব্যবহার
- ✔ Real-life examples

---



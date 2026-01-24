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
---

# 📌 Logical Operators (Dart) — Notes

📌 **Logical Operators** ব্যবহার করা হয় একাধিক condition একসাথে handle করার জন্য।
এগুলো না বুঝলে **login system, permission check, validation, decision making**—কিছুই ঠিকভাবে করা যায় না।

---

## 1️⃣ Logical Operator কী?

👉 **Logical Operator** ব্যবহার হয়:

* একাধিক condition **combine** করতে
* condition **উল্টাতে** (true → false, false → true)

📌 Logical operator সবসময় **bool value** নিয়ে কাজ করে
➡️ Result ও হয় **bool (true / false)**

---

## 2️⃣ Logical Operators List

| Operator | Name | Meaning                    |    |                            |
| -------- | ---- | -------------------------- | -- | -------------------------- |
| `&&`     | AND  | সব condition true হলে true |    |                            |
| `        | OR | যেকোনো একটা true হলেই true |
| `!`      | NOT  | condition উল্টে দেয়        |    |                            |

---

## 3️⃣ AND Operator (`&&`)

### 🔹 Meaning

👉 **সব condition true হতে হবে**

```dart
int age = 20;
bool hasID = true;

if (age >= 18 && hasID == true) {
  print("Entry allowed");
}
```

❌ যদি একটা condition false হয় → result false

---

### 🔹 Example (Login Check)

```dart
String email = "test@gmail.com";
String password = "1234";

if (email == "test@gmail.com" && password == "1234") {
  print("Login success");
}
```

📌 Login system-এ সবচেয়ে বেশি ব্যবহৃত operator

---

## 4️⃣ OR Operator (`||`)

### 🔹 Meaning

👉 **যেকোনো একটা condition true হলেই চলবে**

```dart
bool hasAdminRole = false;
bool hasModeratorRole = true;

if (hasAdminRole || hasModeratorRole) {
  print("Access granted");
}
```

---

### 🔹 Example (Scholarship Eligibility)

```dart
double cgpa = 3.8;
bool isPoor = false;

if (cgpa >= 3.75 || isPoor == true) {
  print("Eligible");
}
```

📌 Alternative condition check করার জন্য `||` ব্যবহার হয়

---

## 5️⃣ NOT Operator (`!`)

### 🔹 Meaning

👉 Condition **উল্টে দেয়**

```dart
bool isLoggedIn = false;

if (!isLoggedIn) {
  print("Please login");
}
```

---

### 🔹 Example

```dart
bool isEmpty = false;

if (!isEmpty) {
  print("Data available");
}
```

📌 Validation এ `!` খুব বেশি ব্যবহার হয়

---

## 6️⃣ Multiple Logical Operators একসাথে ব্যবহার

```dart
int age = 22;
bool hasID = true;
bool isBlacklisted = false;

if (age >= 18 && hasID && !isBlacklisted) {
  print("Allowed");
}
```

🧠 **Real-life decision making** ঠিক এইভাবেই কাজ করে
👉 একাধিক condition → final decision

---

## 7️⃣ Operator Precedence (IMPORTANT ⚠️)

👉 Logical operators-এর priority order:

- 1️⃣ `!`
- 2️⃣ `&&`
- 3️⃣ `||`

### Example:

```dart
bool result = true || false && false;
print(result); // true
```

- 👉 আগে `false && false` → false
- 👉 তারপর `true || false` → true

---

### 🔹 With Brackets (Recommended)

```dart
bool result = (true || false) && false;
print(result); // false
```

📌 Confusion হলে **সবসময় bracket ব্যবহার করো**

---

## 8️⃣ Common Beginner Mistakes ❌

* `&` আর `&&` গুলিয়ে ফেলা
* `|` আর `||` গুলিয়ে ফেলা
* `!` ভুল জায়গায় ব্যবহার করা
* Bracket না দেওয়া
* Logical operator ছাড়া complex `if` লেখা

---

## 9️⃣ Practice Tasks

### Task 1: Age & Student Check

```dart
int age = 19;
bool isStudent = true;

if (age >= 18 && isStudent) {
  print("Discount available");
}
```

---

### Task 2: Login Status

```dart
bool isLoggedIn = false;

if (!isLoggedIn) {
  print("Please login first");
}
```

---

### Task 3: Scholarship Eligibility

```dart
double cgpa = 3.6;
bool hasQuota = true;

if (cgpa >= 3.75 || hasQuota) {
  print("Eligible");
} else {
  print("Not eligible");
}
```

---

## 🔚 Summary

- ✔ AND (`&&`)
- ✔ OR (`||`)
- ✔ NOT (`!`)
- ✔ Multiple condition handling
- ✔ Operator precedence

---
---

## 📌 Assignment Operators — Summary (Deep Level)

### 1️⃣ Basic Assignment `=`

👉 Variable কে value assign করার সবচেয়ে simple way

```dart
int a = 10;       // a এখন 10
String name = "Arif"; // name এখন "Arif"
```

---

### 2️⃣ Shorthand / Combined Assignment Operators

| Operator | Meaning                 | Equivalent Example          |
| -------- | ----------------------- | --------------------------- |
| `+=`     | Add & Assign            | x += 3 → x = x + 3          |
| `-=`     | Subtract & Assign       | x -= 2 → x = x - 2          |
| `*=`     | Multiply & Assign       | x *= 2 → x = x * 2          |
| `/=`     | Divide & Assign         | x /= 3 → x = x / 3 (double) |
| `~/=`    | Integer Divide & Assign | x ~/= 2 → x = x ~/ 2        |
| `%=`     | Modulus & Assign        | x %= 2 → x = x % 2          |

---

### 3️⃣ Example: Step by Step

```dart
int x = 5;

x += 3;  // 5 + 3 = 8
x -= 2;  // 8 - 2 = 6
x *= 2;  // 6 * 2 = 12
x /= 3;  // 12 / 3 = 4.0 (double)
x ~/= 2; // 4 ~/ 2 = 2
x %= 2;  // 2 % 2 = 0

print(x); // 0
```

✅ দেখো, এক লাইনে shorthand লিখে clean ও readable code হয়

---

### 4️⃣ Real-life Example (Bank / Finance)

```dart
int bankBalance = 5000;

// Deposit
bankBalance += 2000; // 7000

// Withdraw
bankBalance -= 1500; // 5500

// Interest 10%
bankBalance *= 1.1.toInt(); // 6050
```

💡 Finance apps, games, score updates, inventory management—সব জায়গায় ব্যবহার হয়

---

### 5️⃣ Common Mistakes ❌

* `=` আর `==` confuse করা
* Shorthand ভুলভাবে ব্যবহার করা
* `/=` করলে int + double mix হলে unexpected result

---

### 6️⃣ Practice Tasks

**Task 1: Simple Calculation**

```dart
int x = 10;
x += 5;  // 15
x -= 3;  // 12
x *= 2;  // 24
x ~/= 4; // 6
x %= 5;  // 1
print(x); // 1
```

**Task 2: Bank Balance**

```dart
int balance = 1000;
balance += 500;  // deposit → 1500
balance -= 200;  // withdraw → 1300
balance *= 2;    // double balance → 2600
print(balance);
```

**Task 3: Score Update**

```dart
int score = 50;
score += 10; // after round 1 → 60
score += 20; // after round 2 → 80
print(score); // 80
```

---

### 7️⃣ Key Points

* `=` → Assign
* `+=, -=, *=, /=, ~/=, %=` → Update shorthand
* Clean & readable code
* Used everywhere: **score, balance, inventory, counters**

---



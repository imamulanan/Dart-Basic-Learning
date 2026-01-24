## 📌 if–else Statements (Dart) — Complete Guide

---

### 1️⃣ if Statement

`if` statement ব্যবহার হয় **condition check** করার জন্য।

* Condition true হলে code run হয়
* False হলে skip হয়

```dart
int age = 20;

if (age >= 18) {
  print("Adult");
}
```

**Breakdown:**

* `if` → condition check করে
* `(condition)` → boolean (true/false)
* `{ }` → condition true হলে যা execute হবে

---

### 2️⃣ if–else

যদি condition false হয়, অন্য code run করা যায়:

```dart
int age = 16;

if (age >= 18) {
  print("Adult");
} else {
  print("Minor");
}
```

---

### 3️⃣ if–else if–else (Multiple Conditions)

একাধিক condition handle করতে ব্যবহার হয়:

```dart
int marks = 75;

if (marks >= 80) {
  print("A+");
} else if (marks >= 60) {
  print("A");
} else if (marks >= 40) {
  print("Pass");
} else {
  print("Fail");
}
```

🧠 Real-life use: grading, eligibility, discount calculation

---

### 4️⃣ Nested if

একটি `if` এর ভিতরে অন্য `if` check করা যায়:

```dart
int age = 20;
bool hasID = true;

if (age >= 18) {
  if (hasID) {
    print("Entry allowed");
  } else {
    print("Show ID");
  }
} else {
  print("Too young");
}
```

---

### 5️⃣ Short-hand if (Ternary Operator)

Simple `if–else` কে shorthand এ লিখতে পারি:

```dart
int age = 19;
String result = (age >= 18) ? "Adult" : "Minor";
print(result);
```

---

### 6️⃣ Condition with Logical Operators

Multiple condition একসাথে check করা যায় `&&` এবং `||` দিয়ে:

```dart
int age = 20;
bool isStudent = true;

if (age >= 18 && isStudent) {
  print("Discount available");
}

int score = 85;

if (score >= 80 || score == 75) {
  print("Eligible for award");
}
```

---

### 7️⃣ Real-life Examples

**Login Check**

```dart
String email = "test@gmail.com";
String password = "1234";

if (email == "test@gmail.com" && password == "1234") {
  print("Login successful");
} else {
  print("Invalid credentials");
}
```

**Exam Result**

```dart
int marks = 90;

if (marks >= 80) {
  print("A+");
} else if (marks >= 60) {
  print("A");
} else if (marks >= 40) {
  print("Pass");
} else {
  print("Fail");
}
```

**Discount Calculator**

```dart
double price = 1200;

if (price > 1000) {
  print("10% discount");
} else {
  print("No discount");
}
```

---

### 8️⃣ Common Beginner Mistakes ❌

* `{ }` না দেওয়া
* `=` এবং `==` confuse করা
* Condition boolean না দেওয়া
* Logical operators ভুলভাবে ব্যবহার করা

---

### 9️⃣ Practice Tasks (MUST DO)

**Task 1: Age Check**

```dart
int age = 17;

if (age >= 18) {
  print("Adult");
} else {
  print("Minor");
}
```

**Task 2: Largest of 3 numbers**

```dart
int a = 10, b = 20, c = 15;

if (a > b && a > c) {
  print("a is largest");
} else if (b > a && b > c) {
  print("b is largest");
} else {
  print("c is largest");
}
```

**Task 3: Even or Odd**

```dart
int number = 7;

if (number % 2 == 0) {
  print("Even");
} else {
  print("Odd");
}
```

---

### 🔚 Summary

- ✔ if
- ✔ if–else
- ✔ if–else if–else
- ✔ Nested if
- ✔ Ternary operator (`? :`)
- ✔ Logical operator integration

---


## 📌 switch-case Statements (Dart) — Complete Guide

---

### 1️⃣ switch-case কী?

`switch-case` হলো **decision-making structure**, যেখানে একটি variable বা expression check করা হয় **multiple possible values** এর সাথে।

🧠 সহজভাবে:

> “একটা value আছে, তার জন্য বিভিন্ন action বানাও”

---

### 2️⃣ switch-case syntax

```dart
switch(expression) {
  case value1:
    // code
    break;
  case value2:
    // code
    break;
  default:
    // code if no case matches
}
```

**Important Notes:**

1. `expression` → int, String (Dart supports both)
2. `break` → প্রতিটি case শেষ করার জন্য
3. `default` → সব case না মিললে execute হয়

---

### 3️⃣ Example 1: Day of Week

```dart
int day = 3;

switch(day) {
  case 1:
    print("Monday");
    break;
  case 2:
    print("Tuesday");
    break;
  case 3:
    print("Wednesday");
    break;
  case 4:
    print("Thursday");
    break;
  case 5:
    print("Friday");
    break;
  case 6:
    print("Saturday");
    break;
  case 7:
    print("Sunday");
    break;
  default:
    print("Invalid day");
}
```

✅ Output: Wednesday

---

### 4️⃣ Example 2: Simple Menu

```dart
String option = "B";

switch(option) {
  case "A":
    print("Add item");
    break;
  case "B":
    print("Delete item");
    break;
  case "C":
    print("Update item");
    break;
  default:
    print("Invalid option");
}
```

✅ Output: Delete item

---

### 5️⃣ Multiple Case in One (Grouped Case)

```dart
int score = 85;

switch(score ~/ 10) {
  case 10:
  case 9:
    print("A+");
    break;
  case 8:
    print("A");
    break;
  case 7:
    print("B");
    break;
  default:
    print("C or below");
}
```

🧠 এখানে:
`score ~/10 → 85 ~/ 10 = 8 → Case 8 → Output: A`

---

### 6️⃣ Difference with if–else

| if–else                      | switch-case                        |
| ---------------------------- | ---------------------------------- |
| Can handle any condition     | Best for discrete values           |
| Can use relational operators | Only exact match                   |
| Flexible                     | More readable for multiple options |

---

### 7️⃣ Real-life Examples

**Grade Checker**

```dart
String grade = "B";

switch(grade) {
  case "A":
    print("Excellent");
    break;
  case "B":
    print("Good");
    break;
  case "C":
    print("Average");
    break;
  default:
    print("Fail");
}
```

**Traffic Signal**

```dart
String signal = "Red";

switch(signal) {
  case "Red":
    print("Stop");
    break;
  case "Yellow":
    print("Get Ready");
    break;
  case "Green":
    print("Go");
    break;
  default:
    print("Invalid signal");
}
```

---

### 8️⃣ Common Beginner Mistakes ❌

* `break` না দেওয়া → next case execute হয়ে যায়
* `default` না দেওয়া → unmatched value problem
* expression type incompatible with case
* duplicate case values

---

### 9️⃣ Practice Tasks (MUST DO)

**Task 1: Day Name**

```dart
int day = 6;

// Write switch-case to print day name
```

**Task 2: Menu Options**

```dart
String menu = "C";

// Write switch-case to perform menu actions
```

**Task 3: Grade Display**

```dart
String grade = "A";

// Write switch-case to print grade message
```

---



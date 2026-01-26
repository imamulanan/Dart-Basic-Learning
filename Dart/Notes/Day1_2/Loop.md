## 📌 Loops in Dart — Complete Guide

Loops ব্যবহার করে আমরা **repeated task, list/array iteration, countdown**, এবং আরও অনেক কাজ automate করতে পারি।

---

### 1️⃣ Loops কী?

Loop হলো এমন একটি structure যা **একই code বারবার execute করে**।

* Task automation
* List / array iteration
* Counting / printing

---

### 2️⃣ Dart এ প্রধান ৩ ধরনের loop

1. `for` loop
2. `while` loop
3. `do-while` loop

---

### 3️⃣ For Loop

**Syntax**

```dart
for(initialization; condition; increment/decrement) {
  // code
}
```

**Example 1: Print 1 to 5**

```dart
for(int i = 1; i <= 5; i++) {
  print(i);
}
```

* `i = 1` → start
* `i <= 5` → condition
* `i++` → increment after each iteration

**Example 2: Loop through List**

```dart
List<String> fruits = ["Apple", "Banana", "Mango"];

for(int i = 0; i < fruits.length; i++) {
  print(fruits[i]);
}
```

---

### 4️⃣ While Loop

**Syntax**

```dart
while(condition) {
  // code
}
```

**Example: Print 1 to 5**

```dart
int i = 1;

while(i <= 5) {
  print(i);
  i++; // increment manually
}
```

**Use Case:**

* Loop count unknown beforehand
* Example: user input until correct

```dart
bool correctPassword = false;

while(!correctPassword) {
  String input = "1234"; // simulate input
  if(input == "1234") {
    print("Password correct");
    correctPassword = true;
  }
}
```

---

### 5️⃣ Do-While Loop

**Syntax**

```dart
do {
  // code
} while(condition);
```

**Difference from while:**

* Code **একবার অবশ্যই execute হবে**, তারপর condition check হবে

**Example**

```dart
int i = 1;

do {
  print(i);
  i++;
} while(i <= 5);
```

✅ Even if `i > 5`, do block runs **once**

---

### 6️⃣ Loop Control Keywords

**Break:** Loop বন্ধ করতে

```dart
for(int i = 1; i <= 5; i++) {
  if(i == 3) break;
  print(i);
}
// Output: 1 2
```

**Continue:** এক iteration skip করে next iteration চলবে

```dart
for(int i = 1; i <= 5; i++) {
  if(i == 3) continue;
  print(i);
}
// Output: 1 2 4 5
```

---

### 7️⃣ Nested Loop

```dart
for(int i = 1; i <= 3; i++) {
  for(int j = 1; j <= 2; j++) {
    print("i=$i, j=$j");
  }
}
```

🧠 Use Case: Pattern printing, multi-dimensional array iteration

---

### 8️⃣ Real-life Examples

**Multiplication Table**

```dart
int n = 5;

for(int i = 1; i <= 10; i++) {
  print("$n x $i = ${n * i}");
}
```

**List Filtering**

```dart
List<int> numbers = [1,2,3,4,5,6];

for(int n in numbers) {
  if(n % 2 == 0) print(n); // only even
}
```

---

### 9️⃣ Common Beginner Mistakes ❌

* Infinite loop (condition always true)
* Forget increment/decrement
* `break` vs `continue` confusion
* Loop index wrong

---

### 🔟 Practice Tasks (MUST DO)

**Task 1:** Print 1 to 10
// Use `for` loop

**Task 2:** Sum of first 5 numbers
// Use `while` loop

**Task 3:** Multiplication table of 7
// Use `for` loop

**Task 4:** Print all odd numbers from list

```dart
List<int> numbers = [1,2,3,4,5,6,7];
```

---

### 🔚 Summary

✔ `for` loop
✔ `while` loop
✔ `do-while` loop
✔ `break` & `continue`
✔ Nested loops
✔ Real-life examples

---


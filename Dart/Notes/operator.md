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

# 📌 Dart Basics — Deep Explanation (Again)

## 1️⃣ Dart SDK কী? (VERY IMPORTANT)

### 🔹 Dart SDK মানে কী?

**SDK = Software Development Kit**

👉 **Dart SDK হলো Dart প্রোগ্রামিং ভাষার পুরো ইঞ্জিন**

এটা ছাড়া তুমি—

- ❌ Dart code লিখতে পারবে না
- ❌ Dart code run করতে পারবে না
- ❌ Dart code compile করতে পারবে না

অর্থাৎ, **Dart SDK = Dart চালানোর জন্য বাধ্যতামূলক জিনিস**

---

### 🔹 Dart SDK এর ভেতরে কী কী থাকে?

#### 1️⃣ Dart Compiler
Dart code কে computer বোঝে এমন code এ convert করে

#### 2️⃣ Dart VM (Virtual Machine)
Dart code execute / run করে

#### 3️⃣ Core Libraries
Built-in দরকারি লাইব্রেরি:

- `dart:core` → basic (int, String, print)
- `dart:io` → file, input/output
- `dart:async` → Future, async/await

#### 4️⃣ dart & pub commands
- `dart run` → program চালাতে
- `dart pub get` → package install করতে

---

### 🔹 Flutter এর সাথে Dart SDK এর relation

- Flutter install করলে 👉 **Dart SDK auto install হয়**
- আলাদা করে Dart SDK install করতে হয় না

📌 **Flutter = UI (button, screen, design)**
📌 **Dart SDK = logic + brain + engine**

---

### 🔹 Real Life Example

ধরো—

- **Dart** = ভাষা (English)
- **Dart SDK** = dictionary + grammar + pronunciation

ভাষা জানলেও rules ছাড়া কথা বলা যায় না
👉 ঠিক তেমনি **Dart SDK ছাড়া Dart চলে না**

---

## 2️⃣ main() Function (Program Entry Point)

### 🔹 main() কী?

👉 Dart program **সবসময় `main()` function থেকে শুরু হয়**

```dart
void main() {
  print("Hello Dart");
}
```

---

### 🔹 Line by Line Breakdown

| অংশ      | মানে                      |
|----------|---------------------------|
| `void`   | কিছু return করবে না       |
| `main()` | program এর starting point |
| `{ }`    | code block                |
| `;`      | statement শেষ             |

---

### 🔹 main() কেন দরকার?

Computer জানে না—

> “কোন line থেকে program চালাবো?”

👉 `main()` বলে দেয়:
**“এইখান থেকে শুরু করো”**

⚠️ `main()` না থাকলে program **run হবে না**

---

### 🔹 Advanced (জানলে ভালো)

```dart
void main(List<String> args) {
}
```

- Command line argument নেয়
- Beginner হলে এখন ignore করলেও ঠিক আছে

---

## 3️⃣ print() Function (Output দেখানোর জন্য)

### 🔹 print() কী?

👉 Screen এ output দেখানোর জন্য ব্যবহার হয়

```dart
print("Hello World");
```

---

### 🔹 print() দিয়ে কী কী দেখানো যায়?

```dart
print(10);
print(10 + 20);
print(true);
print("Flutter");
```

---

### 🔹 Variable print করা

```dart
String name = "Arif";
print(name);
```

---

### 🔹 String Interpolation (VERY IMPORTANT)

```dart
int age = 22;
print("My age is $age");
```

Multiple variable:

```dart
print("Name: $name, Age: $age");
```

📌 `$variable` → value বসিয়ে দেয়

---

### 🔹 Debugging এ print()

Error ধরার সময়:

```dart
print("Reached here");
```

👉 Flutter developer দের সবচেয়ে বড় অস্ত্র 😄

---

## 4️⃣ Comments (Code বোঝানোর জন্য)

### 🔹 Comment কী?

👉 Comment এমন লেখা—

- Program run করে না
- Human এর জন্য লেখা

---

### 🔹 Single-line Comment

```dart
// This is a comment
print("Hello");
```

---

### 🔹 Multi-line Comment

```dart
/*
This is
a multi
line comment
*/
```

---

### 🔹 Documentation Comment (Advanced)

```dart
/// This function prints user name
void showName() {
  print("Arif");
}
```

👉 বড় project এ auto documentation বানাতে কাজে লাগে

---

### 🔹 Comment কেন দরকার?

- নিজের code পরে বুঝতে
- Team member কে বোঝাতে
- Bug fix সহজ করতে

📌 **Good code + Good comment = Professional Developer**

---

## ❌ Common Beginner Mistakes

- ❌ `;` দেওয়া ভুলে যাওয়া
- ❌ `main()` না লেখা
- ❌ Variable এর ভিতরে `print()` লেখা
- ❌ Comment আর code mix করা

---

## ✅ Practice Task (MUST DO)

```dart
void main() {
  // Personal info
  String name = "Your Name";
  int age = 20;

  print("Name: $name");
  print("Age: $age");
}
```

Try this yourself:
- 👉 নিজে run করো
- 👉 name & age change করো

---

## 🔚 Final Summary

✔ Dart SDK কী
✔ main() function
✔ print()
✔ Comments

---

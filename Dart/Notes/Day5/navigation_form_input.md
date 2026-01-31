## 📌 Navigation + Forms + Input (Flutter)

### 📌 Navigation কী?

Navigation মানে হলো
- 👉 এক screen থেকে আরেক screen এ যাওয়া
- 👉 আবার আগের screen এ ফিরে আসা

Flutter এ navigation কাজ করে **stack concept** দিয়ে।

* নতুন screen → stack এর উপরে **push**
* Back করলে → stack থেকে **pop**

---

## 1️⃣ Navigator.push

বর্তমান screen থেকে নতুন screen এ যাওয়ার জন্য ব্যবহার হয়।

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SecondPage(),
  ),
);
```

🔹 কী হয়?

* নতুন screen stack এ add হয়
* Back button চাপলে আগের screen এ ফিরে আসে

---

## 2️⃣ Navigator.pop

বর্তমান screen থেকে আগের screen এ ফিরে যাওয়ার জন্য ব্যবহার হয়।

```dart
Navigator.pop(context);
```

🔹 কী হয়?

* বর্তমান screen stack থেকে remove হয়

---

## 3️⃣ MaterialPageRoute

MaterialPageRoute screen transition define করে।

* Android-style animation দেয়
* `builder` দিয়ে next screen build করে

```dart
MaterialPageRoute(
  builder: (context) => SecondPage(),
);
```

ℹ️ iOS style animation চাইলে `CupertinoPageRoute` ব্যবহার করা হয়।

---

## 📌 Simple Two Screen Example (Push & Pop)

### 🔹 First Screen

```dart
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(),
      ),
    );
  },
  child: Text("Go to Second Page"),
);
```

### 🔹 Second Screen

```dart
ElevatedButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: Text("Go Back"),
);
```

---

## 4️⃣ Named Routes

বড় app এর জন্য **Named Routes** সবচেয়ে ভালো।

### কেন ব্যবহার করবে?

* Code clean থাকে
* Screen বেশি হলে manage করা সহজ
* App scalable হয়

### 🔹 Routes define করা (MaterialApp এ)

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/second': (context) => SecondPage(),
  },
);
```

### 🔹 Navigate করা

```dart
Navigator.pushNamed(context, '/second');
```

### 🔹 Back যাওয়ার জন্য

```dart
Navigator.pop(context);
```

---

## 🧠 Push vs Named Routes

* `Navigator.push` → ছোট app, quick use
* `Named Routes` → বড় app, অনেক screen

---

## 📌 Real Life Example

* Stack = বইয়ের স্তূপ
* Push = নতুন বই রাখা
* Pop = উপর থেকে বই তোলা

---

# 📌 Input Widgets (Flutter)

Input widgets ব্যবহার হয় user থেকে data নেওয়ার জন্য।
যেমন: Login, Signup, Search, Form ইত্যাদি।

---

## 1️⃣ TextField

`TextField` হলো basic input widget।

```dart
TextField(
  decoration: InputDecoration(
    labelText: "Enter name",
    border: OutlineInputBorder(),
  ),
);
```

🔹 Features:

* Simple text input
* Built-in validation নেই
* Lightweight
* Search box বা simple input এর জন্য ভালো

---

## 2️⃣ TextFormField

`TextFormField` form-based input এর জন্য।

```dart
TextFormField(
  decoration: InputDecoration(
    labelText: "Email",
    border: OutlineInputBorder(),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Field cannot be empty";
    }
    return null;
  },
);
```

🔹 Features:

* `Form` widget এর সাথে কাজ করে
* Built-in validation support
* Login / Signup form এর জন্য best

---

## 3️⃣ TextEditingController

Controller ব্যবহার হয় input এর value control করার জন্য।

```dart
TextEditingController nameController = TextEditingController();
```

### TextField / TextFormField এ ব্যবহার

```dart
TextField(
  controller: nameController,
);
```

### Value পড়া

```dart
print(nameController.text);
```

### Clear করা

```dart
nameController.clear();
```

### ⚠️ Important

* `StatefulWidget` এ ব্যবহার করতে হয়
* `dispose()` না করলে memory leak হতে পারে

```dart
@override
void dispose() {
  nameController.dispose();
  super.dispose();
}
```

---

## 🧠 TextField vs TextFormField (Quick Summary)

* `TextField` → simple input
* `TextFormField` → validation + form
* `TextEditingController` → input control ও data access

---

## 📌 Simple Mini Example (Real Use Case)

```dart
TextEditingController emailController = TextEditingController();

TextFormField(
  controller: emailController,
  decoration: InputDecoration(
    labelText: "Email",
  ),
);
```

---



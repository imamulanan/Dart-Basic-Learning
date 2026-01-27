# 📌 String Manipulation in Dart — Basic → Advanced (সহজভাবে)

---

## 1️⃣ String কী? (একদম বেসিক)

👉 **String** হলো text রাখার জন্য ব্যবহার করা data type।
নাম, মেসেজ, API response, button text, error message সবই String।

```dart
String name = "Arif";
String greeting = 'Hello World';
```

- ✔ Single quote `' '`
- ✔ Double quote `" "`
দুটোই একই কাজ করে।

---

### 🔹 Multiline String (একাধিক লাইনের text)

```dart
String message = '''
Welcome Arif,
This is your dashboard.
Have a nice day!
''';

void main() {
  print(message);
}
```

📱 Flutter এ long text, description, policy দেখাতে কাজে লাগে।

---

## 2️⃣ String Concatenation (Text জোড়া দেওয়া)

### 🔹 + Operator (Old style)

```dart
String first = "Hello";
String last = "Arif";

void main() {
  String full = first + " " + last;
  print(full); // Hello Arif
}
```

❌ Flutter এ বেশি recommend না (messy হয়)

---

### 🔹 String Interpolation (BEST WAY ✅)

```dart
String name = "Arif";
int age = 22;

void main() {
  print("Hello $name");
  print("$name is $age years old");
  print("Next year age: ${age + 1}");
}
```

- 👉 `$variable`
- 👉 `${expression}`

📌 Flutter UI তে ৯০% সময় এটা ব্যবহার করবে।

---

## 3️⃣ Common String Methods (সবচেয়ে গুরুত্বপূর্ণ অংশ)

### 🔹 length

```dart
print("Arif".length); // 4
```

---

### 🔹 Uppercase / Lowercase

```dart
String text = "flutter";

void main() {
  print(text.toUpperCase()); // FLUTTER
  print(text.toLowerCase()); // flutter
}
```

📱 Search, username, email compare করতে কাজে লাগে।

---

### 🔹 trim() — extra space remove

```dart
String input = "  Hello World  ";

void main() {
  print(input.trim()); // Hello World
}
```

📱 User input clean করার জন্য MUST.

---

### 🔹 substring()

```dart
String word = "Arif";

void main() {
  print(word.substring(1, 3)); // ri
}
```

📌 start index include
📌 end index exclude

---

### 🔹 contains()

```dart
void main() {
  print("Hello".contains("ell")); // true
}
```

📱 Email, password validation।

---

### 🔹 replaceAll()

```dart
void main() {
  print("Hi Hi".replaceAll("Hi", "Hello"));
}
```

---

### 🔹 split()

```dart
void main() {
  List<String> fruits = "apple,banana,mango".split(",");
  print(fruits);
}
```

📱 API response parse করার সময় খুব দরকার।

---

### 🔹 startsWith() / endsWith()

```dart
void main() {
  print("Flutter".startsWith("Fl")); // true
  print("email@gmail.com".endsWith(".com")); // true
}
```

---

### 🔹 indexOf()

```dart
void main() {
  print("Hello".indexOf("e")); // 1
}
```

---

### 🔹 isEmpty / isNotEmpty

```dart
void main() {
  print("".isEmpty);      // true
  print("Hi".isNotEmpty); // true
}
```

📱 Form validation এর core।

---

## 4️⃣ String Comparison (VERY IMPORTANT)

```dart
String a = "hello";
String b = "Hello";

void main() {
  print(a == b); // false

  print(a.toLowerCase() == b.toLowerCase()); // true
}
```

👉 Dart **case-sensitive**

---

## 5️⃣ Raw String (Escape ignore করে)

```dart
void main() {
  String path = r"C:\Users\Arif\Documents";
  print(path);
}
```

📌 File path, regex এ কাজে লাগে।

---

## 6️⃣ Escape Characters

```dart
void main() {
  print("Hello\nWorld");
  print("Name:\tArif");
}
```

| Symbol | Meaning      |
| ------ | ------------ |
| `\n`   | new line     |
| `\t`   | tab          |
| `\\`   | backslash    |
| `\"`   | double quote |

---

## 7️⃣ String + Function (Real Power 💪)

```dart
String formatName(String name) {
  name = name.trim();
  name = name.toUpperCase();
  return name;
}

void main() {
  print(formatName("  arif  ")); // ARIF
}
```

📱 Flutter form data clean করার real example।

---

## 8️⃣ Real-life Example (Email Validation)

```dart
void main() {
  String email = "arif@example.com";

  if (email.contains("@") && email.endsWith(".com")) {
    print("Valid Email");
  } else {
    print("Invalid Email");
  }
}
```

---

## 🔟 Practice Tasks (Answer সহ)

```dart
// 1
print("flutter is fun".toUpperCase());

// 2
print("Hello Arif".substring(6));

// 3
print(" Hello World ".trim());

// 4
print("I love Flutter".replaceAll("Flutter", "Dart"));

// 5
print("apple,banana,mango".split(","));

// 6
print("Dart".startsWith("Da"));

// 7
String formatName(String name) {
  return name.trim().toUpperCase();
}
```

---

## 🔚 Final Summary

- ✔ String = text data
- ✔ Interpolation > concatenation
- ✔ Built-in methods খুব powerful
- ✔ Flutter UI + Form + API = String heavy
- ✔ String + Function = clean & reusable code

---


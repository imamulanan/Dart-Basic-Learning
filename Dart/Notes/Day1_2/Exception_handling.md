# **📌 Exception Handling in Dart — Complete Guide**

### 1️⃣ **Exception vs Error**

| Type          | Meaning                                            | Example                                    | Can handle? |
| ------------- | -------------------------------------------------- | ------------------------------------------ | ----------- |
| **Error**     | System-level problem, mostly compile/runtime crash | Syntax error, OutOfMemoryError             | No          |
| **Exception** | Runtime problem, program can catch & handle        | Divide by zero, Null access, Invalid index | Yes         |

**মোট কথা:** Exception হলো runtime problem যা handle করা যায়।

---

### 2️⃣ **try-catch**

* Risky code execute করার জন্য try block ব্যবহার হয়।
* Exception হলে catch block execute হয়।

```dart
void main() {
  try {
    int result = 12 ~/ 0; // risky: divide by zero
    print(result);
  } catch(e) {
    print("Error occurred: $e");
  }
}
// Output: Error occurred: IntegerDivisionByZeroException
```

* `e` → exception object, যা error info ধরে রাখে।

---

### 3️⃣ **catch with StackTrace**

* StackTrace দেখালে error কোথায় হয়েছে, trace পেয়ে debugging সহজ হয়।

```dart
void main() {
  try {
    int result = 12 ~/ 0;
  } catch(e, s) {
    print("Error: $e");
    print("StackTrace: $s");
  }
}
```

* `s` → shows detailed error location।

---

### 4️⃣ **finally**

* `finally` block সবসময় execute হয়, exception হোক বা না হোক।
* Cleanup, file close, DB disconnect ইত্যাদি জন্য useful।

```dart
void main() {
  try {
    int result = 12 ~/ 2;
    print(result);
  } catch(e) {
    print("Error: $e");
  } finally {
    print("This will always run");
  }
}
// Output:
// 6
// This will always run
```

---

### 5️⃣ **throw Exception**

* নিজের মতো custom exception throw করা যায়।

```dart
void checkAge(int age) {
  if(age < 18) {
    throw Exception("Age must be 18 or above");
  } else {
    print("Access granted");
  }
}

void main() {
  try {
    checkAge(15);
  } catch(e) {
    print(e); // Age must be 18 or above
  }
}
```

**Key point:** throw → manually exception create করে program কে stop বা handle করানো।

---

### 6️⃣ **Multiple catch / on**

* `on` → specific exception type handle করতে।
* `catch` → generic সব exception।

```dart
void main() {
  try {
    int result = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero!");
  } catch(e) {
    print("Other error: $e");
  }
}
```

* প্রথমে `on` check হয়, match না হলে `catch` execute হয়।

---

### 7️⃣ **Real-life Example**

```dart
void main() {
  List<int> numbers = [1, 2, 3];

  try {
    print(numbers[5]); // risky: index out of range
  } catch(e) {
    print("Index error: $e");
  } finally {
    print("Operation finished"); // always runs
  }
}
```

**Output:**

```
Index error: RangeError (index): Invalid value: Not in range 0..2, inclusive: 5
Operation finished
```

---

### 8️⃣ **Common Beginner Mistakes ❌**

* try-catch না use করা risky code এ
* catch block এ exception ignore করা
* finally block ভুল বোঝা → সবসময় run হয়
* throw না use করা যেখানে custom error দরকার

---

### 9️⃣ **Practice Tasks**

1. Divide two numbers safely → catch division by zero
2. Access list index safely → catch out of range error
3. Function `validateAge(int age)` → throw exception if age < 18
4. Open file / resource simulation → always run finally block

---

### 🔚 **Summary Table**

| Concept     | Key Points                    |
| ----------- | ----------------------------- |
| try-catch   | Handle runtime exceptions     |
| catch(e)    | Generic error                 |
| catch(e, s) | Error + stacktrace            |
| finally     | Always executes, cleanup      |
| throw       | Create custom exception       |
| on          | Catch specific exception type |

---
---

## 📌 Asynchronous Programming in Dart — Complete & Easy Guide (বাংলায়)

Flutter/Dart এ আমরা প্রায় সব সময় এমন কাজ করি যেগুলো **সময় নেয়**
যেমন:
API call, database fetch, file read, timer, animation, stream data ইত্যাদি।
এই কারণেই **Asynchronous programming খুব গুরুত্বপূর্ণ**।

---

## 1️⃣ Synchronous vs Asynchronous (খুব সহজভাবে)

### 🔹 Synchronous (একটার পর একটা)

👉 আগের কাজ শেষ না হলে পরেরটা শুরু হয় না

```dart
void main() {
  print("Task 1");
  print("Task 2");
  print("Task 3");
}
```

✅ Output:

```
Task 1
Task 2
Task 3
```

এটা ঠিক লাইনে দাঁড়িয়ে থাকা মানুষের মতো।

---

### 🔹 Asynchronous (background এ কাজ)

👉 সময় লাগা কাজ background এ চলে
👉 main thread ব্লক হয় না

```dart
void main() {
  Future.delayed(Duration(seconds: 2), () {
    print("Async Task Done");
  });

  print("Main Task");
}
```

✅ Output:

```
Main Task
Async Task Done
```

🧠 মানে: async কাজ শেষ হওয়ার অপেক্ষা না করে main code চলতে থাকে।

---

## 2️⃣ Future কী?

### 🔹 Future মানে কী?

👉 Future মানে হচ্ছে **ভবিষ্যতে আসবে এমন একটি value**

* এখন নেই
* পরে আসবে
* একবারই আসবে

```dart
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Data Loaded",
  );
}
```

এখানে:

* `Future<String>` → future এ String আসবে
* 2 second পরে value return হবে

---

### 🔹 then() দিয়ে Future handle করা

```dart
void main() {
  fetchData().then((data) {
    print(data);
  });

  print("Fetching...");
}
```

✅ Output:

```
Fetching...
Data Loaded
```

🧠 কারণ: fetchData সময় নেয়, তাই "Fetching..." আগে print হয়।

---

## 3️⃣ async & await (সবচেয়ে গুরুত্বপূর্ণ)

### 🔹 কেন async-await দরকার?

- 👉 `then()` অনেক সময় messy হয়ে যায়
- 👉 async-await code কে **normal code এর মতো readable** করে

---

### 🔹 async & await Example

```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data Loaded";
}

void main() async {
  print("Start");
  String data = await fetchData();
  print(data);
  print("End");
}
```

✅ Output:

```
Start
Data Loaded
End
```

🧠 এখানে:

* `async` → function async
* `await` → Future complete হওয়া পর্যন্ত অপেক্ষা

⚠️ Rule:

* `await` ব্যবহার করলে function অবশ্যই `async` হতে হবে

---

## 4️⃣ async এর সাথে try-catch (Error Handling)

Async code এ error হলে **try-catch না থাকলে app crash করবে**।

```dart
Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    throw Exception("Server error");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Operation finished");
  }
}

void main() async {
  await fetchData();
}
```

🧠 এখানে:

* `try` → risky async code
* `catch` → error handle
* `finally` → সবসময় run হবে

---

## 5️⃣ Stream (Real-time data)

### 🔹 Future vs Stream

| Feature | Future       | Stream             |
| ------- | ------------ | ------------------ |
| Value   | একবার        | বারবার             |
| Example | API response | Live data, counter |

---

### 🔹 Stream Example

```dart
Stream<int> counter() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
```

এখানে:

* `async*` → stream function
* `yield` → value পাঠানো

---

### 🔹 Stream consume করা

```dart
void main() async {
  await for (var value in counter()) {
    print(value);
  }
}
```

✅ Output:

```
1
2
3
4
5
```

(প্রতি 1 second পর)

---

## 6️⃣ Real-life Example (User Data Fetch)

```dart
Future<String> getUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return "User: Arif";
}

void main() async {
  print("Fetching user data...");
  String user = await getUserData();
  print(user);
}
```

এটা একদম API call এর মতো behavior।

---

## 7️⃣ Common Beginner Mistakes ❌

- ❌ `async` না লিখে `await` ব্যবহার করা
- ❌ `await` ভুলে গিয়ে Future object print করা
- ❌ async error handle না করা
- ❌ Stream ঠিকমতো listen না করা

---

## 8️⃣ Practice Tasks (এগুলো করতেই হবে)

- 1️⃣ 2 second পরে message print করা
- 2️⃣ async function → 3 second পরে value return
- 3️⃣ Future থেকে exception throw → try-catch
- 4️⃣ Stream → 1 থেকে 5 counter print

---

## 🔚 Final Summary

| Concept   | সহজ ভাষায়                    |
| --------- | ---------------------------- |
| Future    | ভবিষ্যতের একবারের value      |
| async     | function async ঘোষণা         |
| await     | Future শেষ হওয়া পর্যন্ত wait |
| try-catch | async error handle           |
| Stream    | real-time multiple values    |
| yield     | Stream এ value পাঠানো        |

---


## 📌 Dart Async & Await — Deep Dive

---

### 1️⃣ Async-Await কী?

* Dart এ **async** এবং **await** ব্যবহার করা হয় **asynchronous operations** handle করার জন্য।
* Asynchronous মানে: **code immediately run হয়, কিন্তু কিছু operation (যেমন network, database) পরে complete হয়।**
* Normally synchronous code sequentially execute হয়, কিন্তু async code **non-blocking** হয়।

🧠 সহজভাবে:

> “আমি কিছু task শুরু করি, কিন্তু পরবর্তী কাজগুলোকে block করি না। শেষ হলে result পাই।”

---

### 2️⃣ Future কী?

* Dart এ **Future** represent করে **অদূর ভবিষ্যতের একটি value** যা পরে পাওয়া যাবে।
* একভাবে ভাবো: Future = “promise to give a value later”

**Example**

```dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Data fetched");
}

void main() {
  print("Start");
  fetchData().then((data) => print(data));
  print("End");
}
```

**Output:**

```
Start
End
Data fetched
```

* এখানে `fetchData()` 2 seconds delay পরে value return করছে।
* `.then()` দিয়ে আমরা result handle করি।

---

### 3️⃣ Async & Await দিয়ে সহজ করা

* `.then()` syntax messy লাগতে পারে। Async-await দিয়ে আমরা **sequential style** এ code লিখতে পারি।

```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched";
}

void main() async {
  print("Start");
  String data = await fetchData();
  print(data);
  print("End");
}
```

**Output:**

```
Start
Data fetched
End
```

* `async` → function asynchronous হবে
* `await` → wait until Future completes
* `await` use করতে হলে function **async** হতে হবে

---

### 4️⃣ Async Function Structure

```dart
Future<ReturnType> functionName(parameters) async {
  // await operations
  return value;
}
```

* `ReturnType` → Future<Type>
* Async function **always return Future**
* কোনো synchronous value return করলে Dart automatically wrap করে Future এ

**Example**

```dart
Future<int> addAsync(int a, int b) async {
  await Future.delayed(Duration(seconds: 1)); // simulate delay
  return a + b;
}

void main() async {
  int sum = await addAsync(5, 3);
  print(sum); // 8
}
```

---

### 5️⃣ Multiple Await Calls (Sequential)

```dart
Future<String> task1() async {
  await Future.delayed(Duration(seconds: 2));
  return "Task 1 done";
}

Future<String> task2() async {
  await Future.delayed(Duration(seconds: 1));
  return "Task 2 done";
}

void main() async {
  String t1 = await task1();
  print(t1);

  String t2 = await task2();
  print(t2);
}
```

* এখানে **task2**, **task1** শেষ হওয়ার পরে run হবে।
* Sequential execution → total time = 3 seconds

---

### 6️⃣ Parallel Execution (Future.wait)

* যদি independent operations থাকে, আমরা **একসাথে run** করতে পারি।

```dart
void main() async {
  Future<String> t1 = task1();
  Future<String> t2 = task2();

  List<String> results = await Future.wait([t1, t2]);
  print(results); // [Task 1 done, Task 2 done]
}
```

* `Future.wait` → সব future একসাথে execute হবে
* অনেক দ্রুত run হয়, sequential wait কমে যায়

---

### 7️⃣ Error Handling in Async

```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception("Network error");
}

void main() async {
  try {
    String data = await fetchData();
    print(data);
  } catch(e) {
    print("Caught error: $e");
  } finally {
    print("Done");
  }
}
```

* `try-catch-finally` দিয়ে async errors handle করা যায়
* Always handle errors, না হলে program crash করতে পারে

---

### 8️⃣ Real-life Use Cases

1. **API call simulation**

```dart
Future<String> getUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return "User: Arif, Age: 20";
}

void main() async {
  print("Fetching user data...");
  String user = await getUserData();
  print(user);
}
```

2. **Database fetch simulation**

```dart
Future<List<int>> fetchNumbers() async {
  await Future.delayed(Duration(seconds: 1));
  return [1,2,3,4,5];
}

void main() async {
  List<int> numbers = await fetchNumbers();
  print(numbers);
}
```

3. **UI Loading Simulation**

* Flutter apps এ `async-await` ব্যবহার হয় **network requests, local storage fetch, file read** ইত্যাদিতে

---

### 9️⃣ Common Mistakes ❌

* `await` function ছাড়া use করা → error
* async function return type ভুল দেওয়া
* Future এর result ignore করা
* Error handling না করা → crash

---

## 🔟 Practice Tasks (MUST DO)


---

## ✅ 1. Simulate API Call (`fetchPost`)

```dart
Future<String> fetchPost() async {
  await Future.delayed(Duration(seconds: 2));
  return "Understanding Async & Await in Dart";
}

void main() async {
  print("Fetching post...");
  String postTitle = await fetchPost();
  print("Post title: $postTitle");
}
```

---

## ✅ 2. Parallel Future Execution (`Future.wait`)

```dart
Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "User data loaded";
}

Future<String> fetchPosts() async {
  await Future.delayed(Duration(seconds: 1));
  return "Posts data loaded";
}

void main() async {
  print("Loading data...");

  List<String> results = await Future.wait([
    fetchUser(),
    fetchPosts(),
  ]);

  for (var result in results) {
    print(result);
  }
}
```

---

## ✅ 3. Async Error Handling (try–catch)

```dart
Future<String> fetchDataWithError() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception("Failed to fetch data");
}

void main() async {
  try {
    String data = await fetchDataWithError();
    print(data);
  } catch (e) {
    print("Error caught: $e");
  } finally {
    print("Process finished");
  }
}
```

---

## ✅ 4. Async Calculator (Add, Subtract, Multiply)

```dart
Future<int> add(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a + b;
}

Future<int> subtract(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a - b;
}

Future<int> multiply(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a * b;
}

void main() async {
  int sum = await add(10, 5);
  int diff = await subtract(10, 5);
  int product = await multiply(10, 5);

  print("Addition: $sum");
  print("Subtraction: $diff");
  print("Multiplication: $product");
}
```


---

### 🔚 Summary

| Concept            | Key Points                                         |
| ------------------ | -------------------------------------------------- |
| Future             | Represents a value to be available later           |
| Async Function     | Declare with `async`, always returns `Future`      |
| Await              | Wait until Future completes                        |
| Sequential Await   | Operations run one by one                          |
| Parallel Execution | Use `Future.wait` to run multiple Futures together |
| Error Handling     | Use `try-catch-finally` for async operations       |
| Use Cases          | API call, DB fetch, UI loading, network requests   |

---


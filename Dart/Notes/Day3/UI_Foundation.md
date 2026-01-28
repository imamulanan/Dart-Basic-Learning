## Flutter Core Basics (UI Foundation)

---

## 📌 Flutter Architecture (Flutter কীভাবে কাজ করে)

### 1️⃣ Flutter কীভাবে কাজ করে

Flutter নিজের **rendering system** ব্যবহার করে।
মানে Android বা iOS এর native button, text এগুলো ব্যবহার করে না।
সব UI Flutter নিজেই draw করে।

Flutter এর architecture তিনটা layer এ ভাগ করা যায়:

### 🔹 1. Flutter Framework (Dart)

* আমরা যেই code লিখি (Widget, UI, logic)
* Material ও Cupertino design এখানেই থাকে
* সম্পূর্ণ Dart দিয়ে লেখা

### 🔹 2. Flutter Engine (C++)

* UI render করে
* Animation চালায়
* Text, shape draw করে
* Skia graphics engine ব্যবহার করে

### 🔹 3. Embedder (Platform Layer)

* Flutter কে Android, iOS, Web, Desktop এর সাথে connect করে
* Screen, keyboard, touch, app lifecycle handle করে

### 🔄 কাজের Flow

```
Flutter Code
→ Framework
→ Engine
→ Native Platform
→ Screen
```

- 👉 Flutter native UI ব্যবহার করে না
- 👉 তাই সব platform এ UI একই থাকে
- 👉 Performance ভালো হয়

---

## 📌 Widget Tree কী?

Flutter এ UI তৈরি হয় **Widget Tree** দিয়ে।

একটা widget এর ভিতরে আরেকটা widget থাকে।
এভাবে parent–child relationship তৈরি হয়।

### গুরুত্বপূর্ণ পয়েন্ট:

* Root widget সাধারণত `MaterialApp` বা `CupertinoApp`
* প্রতিটা screen আসলে একটা widget
* UI tree আকারে সাজানো থাকে

### Simple Widget Tree

```
MaterialApp
 └─ Scaffold
    ├─ AppBar
    └─ Body
       └─ Column
          ├─ Text
          └─ Button
```

👉 Flutter UI build করে **top থেকে bottom** widget tree অনুযায়ী

---

## 📌 Widget Tree এর ছোট Example

```dart
MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Flutter"),
    ),
    body: Center(
      child: Text("Hello World"),
    ),
  ),
);
```

### এখানে:

* `MaterialApp` → Root widget
* `Scaffold` → Screen structure
* `AppBar`, `Center`, `Text` → Child widgets

---

## 📌 Everything is a Widget

Flutter এর সবচেয়ে গুরুত্বপূর্ণ concept:

### 👉 Everything is a Widget

মানে:

* Text → Widget
* Button → Widget
* Padding → Widget
* Alignment → Widget
* Screen → Widget
* এমনকি ফাঁকা জায়গাও → Widget

### Example:

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Text("Hello"),
);
```

এখানে:

* `Padding` একটি widget
* `Text` একটি widget

👉 Visible বা invisible সবকিছু widget দিয়েই তৈরি

---

## 📌 Flutter Architecture – Quick Notes (Exam)

* Flutter নিজের rendering engine ব্যবহার করে
* Native UI components ব্যবহার করে না
* UI তৈরি হয় Widget Tree দিয়ে
* Widget গুলো parent–child relationship এ থাকে
* State change হলে widget tree আবার build হয়

### 🧠 One-line Trick

```
Flutter = Widget → Widget Tree → Engine → Screen
```

---

## 📌 Stateless vs Stateful Widget

---

## 1️⃣ StatelessWidget

StatelessWidget এমন widget যার UI একবার build হলে আর change হয় না।

### বৈশিষ্ট্য:

* কোনো state নেই
* UI change হয় না
* Button click, counter handle করে না
* Static UI এর জন্য ব্যবহার হয়
* Performance ভালো

### Example:

```dart
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello Flutter");
  }
}
```

👉 এই Text কখনো change হবে না

---

## 2️⃣ StatefulWidget

StatefulWidget এমন widget যার UI runtime এ change হতে পারে।

### বৈশিষ্ট্য:

* Internal state থাকে
* User interaction এ UI update হয়
* Button click, counter, form, API data দেখাতে ব্যবহার হয়
* `setState()` দিয়ে UI rebuild হয়

### Example:

```dart
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Text("$count");
  }
}
```

👉 `count` change হলে UI আবার build হবে

---

## 📌 Stateless vs Stateful (Difference Table)

| Topic      | StatelessWidget | StatefulWidget |
| ---------- | --------------- | -------------- |
| UI change  | ❌ No            | ✅ Yes          |
| State      | নেই             | আছে            |
| setState() | ব্যবহার হয় না   | ব্যবহার হয়     |
| Use case   | Static UI       | Dynamic UI     |
| Complexity | Simple          | একটু complex   |

---

## 📌 StatefulWidget Lifecycle (সহজভাবে)

StatefulWidget কিছু step এ কাজ করে:

### Lifecycle Steps:

1. `createState()`
   → widget এর state তৈরি করে

2. `initState()`
   → widget প্রথমবার load হলে call হয়
   → API call, initial data load

3. `build()`
   → UI draw করে
   → অনেকবার call হতে পারে

4. `setState()`
   → state change করে
   → UI আবার build হয়

5. `dispose()`
   → widget remove হলে call হয়
   → memory clean করে

### Lifecycle Flow:

```
createState
→ initState
→ build
→ setState
→ build
→ dispose
```

---

## 📌 কখন কোনটা ব্যবহার করবে?

* Static text, icon, image → **StatelessWidget**
* Counter, form, button click, API data → **StatefulWidget**

---

## 📌 Exam / Interview One-liners

* StatelessWidget has no mutable state
* StatefulWidget can rebuild UI using setState
* initState runs only once
* build() can run multiple times

---
---

## 📌 Basic Widgets (Flutter – Easy Banglish Notes)

---

## 1️⃣ MaterialApp

`MaterialApp` হলো Flutter app-এর **root widget**।
এটা পুরো app-কে wrap করে রাখে।

এখানেই define করা হয়:

* কোন screen first দেখাবে (home)
* app theme
* app title

👉 সহজভাবে: **পুরো app-এর container**

```dart
MaterialApp(
  home: HomePage(),
);
```

---

## 2️⃣ Scaffold

`Scaffold` একটা **screen বানানোর frame** দেয়।

এর ভিতরে সাধারণত থাকে:

* `appBar`
* `body`
* `floatingActionButton`

```dart
Scaffold(
  appBar: AppBar(),
  body: Text("Hello"),
);
```

👉 এক কথায়: **একটা page তৈরির structure**

---

## 3️⃣ AppBar

`AppBar` হলো screen-এর **উপরের bar**।

এখানে থাকে:

* title
* back button
* action icons

```dart
AppBar(
  title: Text("Home"),
);
```

---

## 4️⃣ Text

Screen-এ লেখা দেখাতে `Text` widget ব্যবহার হয়।

```dart
Text("Hello Flutter");
```

এতে customize করা যায়:

* font size
* color
* font weight
* style

---

## 5️⃣ Container

`Container` হলো Flutter-এর সবচেয়ে বেশি ব্যবহার হওয়া **box widget**।

এতে দেওয়া যায়:

* height, width
* color
* padding, margin
* decoration (border, radius)

```dart
Container(
  height: 100,
  width: 100,
  color: Colors.blue,
);
```

👉 মনে রাখো: **UI বানানোর basic block = Container**

---

## 6️⃣ Center

Child widget-কে screen-এর **একদম মাঝখানে** রাখে।

```dart
Center(
  child: Text("Hello"),
);
```

---

## 7️⃣ Padding

`Padding` widget-এর **ভিতরের ফাঁকা জায়গা** দেয়।

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Text("Hello"),
);
```

👉 Inner space = Padding

---

## 8️⃣ SizedBox

`SizedBox` ব্যবহার হয়:

* fixed gap দিতে
* fixed size দিতে

### Gap হিসেবে:

```dart
SizedBox(height: 20);
```

### Size হিসেবে:

```dart
SizedBox(
  height: 100,
  width: 100,
  child: Container(color: Colors.red),
);
```

---

## 🧠 Basic Widgets – Short Summary

* MaterialApp → পুরো app
* Scaffold → এক screen structure
* AppBar → top bar
* Text → লেখা
* Container → box
* Center → মাঝখানে আনে
* Padding → ভেতরের space
* SizedBox → fixed space বা size

---

# 📌 Layout Widgets (Flutter – Easy Banglish)

Layout widgets ব্যবহার হয় **widget গুলোর position, size, alignment control** করার জন্য।

👉 Main idea:
**কোন widget কোথায় বসবে, কত জায়গা নেবে**

---

## 1️⃣ Row

`Row` widget child গুলোকে **horizontal (left → right)** ভাবে সাজায়।

```dart
Row(
  children: [
    Text("A"),
    Text("B"),
    Text("C"),
  ],
);
```

- 👉 সব child এক লাইনে বসে
- 👉 জায়গা কম হলে overflow error আসে

---

## 2️⃣ Column

`Column` widget child গুলোকে **vertical (top → bottom)** ভাবে সাজায়।

```dart
Column(
  children: [
    Text("One"),
    Text("Two"),
    Text("Three"),
  ],
);
```

👉 Row-এর vertical version
👉 Height বেশি হলে overflow হতে পারে

---

## 3️⃣ Expanded

`Expanded` child-কে **available space পুরোটা নিতে বাধ্য করে**।

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.red)),
    Expanded(child: Container(color: Colors.blue)),
  ],
);
```

👉 Screen দুই ভাগে ভাগ হয়ে যায়

### flex দিয়ে ratio control:

```dart
Expanded(flex: 2, child: Container()),
Expanded(flex: 1, child: Container()),
```

👉 2:1 ratio

---

## 4️⃣ Flexible

`Flexible` space নেয়, কিন্তু **জোর করে পুরো জায়গা নেয় না**।

```dart
Row(
  children: [
    Flexible(child: Text("Long Text")),
    Icon(Icons.star),
  ],
);
```

- 👉 Text বড় হলে auto adjust হয়
- 👉 Overflow কম হয়

### Difference সহজভাবে:

* Expanded → পুরো জায়গা নিতেই হবে
* Flexible → দরকার অনুযায়ী নেয়

---

## 5️⃣ Spacer

`Spacer` Row বা Column এর মাঝে **খালি জায়গা** তৈরি করে।

```dart
Row(
  children: [
    Text("Left"),
    Spacer(),
    Text("Right"),
  ],
);
```

- 👉 Spacer = invisible Expanded
- 👉 flex দেওয়া যায়

```dart
Spacer(flex: 2);
```

---

## 🧠 Layout Widgets – Quick Table

* Row → left to right layout
* Column → top to bottom layout
* Expanded → পুরো space নেয়
* Flexible → smart space নেয়
* Spacer → gap তৈরি করে

---

## 🔑 Real-Life Trick (মাথায় রাখার জন্য)

* Row / Column → টেবিল
* Expanded → auto stretch cell
* Spacer → খালি জায়গা

---
---

## 📌 MainAxisAlignment & CrossAxisAlignment (Flutter)

এই দুইটা concept **Row** আর **Column** layout বোঝার জন্য সবচেয়ে important।

---

## 🔹 MainAxisAlignment

**Main axis** মানে layout যেদিকে তৈরি হয়।

* Row হলে → **horizontal** (left ↔ right)
* Column হলে → **vertical** (top ↕ bottom)

`MainAxisAlignment` দিয়ে child widget গুলোর **spacing আর position** control করা হয়।

### Common values:

* `start` → শুরু থেকে বসে
* `center` → মাঝখানে বসে
* `end` → শেষে বসে
* `spaceBetween` → first ও last edge-এ, মাঝখানে equal gap
* `spaceAround` → চারপাশে gap (edge-এ অর্ধেক gap)
* `spaceEvenly` → সব জায়গায় equal gap

### Example:

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("A"),
    Text("B"),
    Text("C"),
  ],
);
```

👉 A বামে, C ডানে, B মাঝখানে বসে

---

## 🔹 CrossAxisAlignment

**Cross axis** মানে main axis এর বিপরীত দিক।

* Row হলে → **vertical** (top ↕ bottom)
* Column হলে → **horizontal** (left ↔ right)

এটা দিয়ে child গুলোর **side-wise alignment** control করা হয়।

### Common values:

* `start` → উপরে / বামে
* `center` → মাঝখানে
* `end` → নিচে / ডানে
* `stretch` → পুরো width বা height নেয়

### Example:

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Hello"),
    Text("Flutter"),
  ],
);
```

👉 সব Text বাম পাশে aligned থাকবে

---

## 🧠 Easy Rule (মাথায় রাখার জন্য)

* MainAxis → যেদিকে layout যায়
* CrossAxis → তার উল্টো দিক

---

## 📌 Row / Column Overflow কী?

Overflow মানে:
- 👉 screen ছোট, content বড়
- 👉 yellow/black warning দেখায়

---

## Overflow Fix করার উপায়

---

## 1️⃣ Expanded ব্যবহার করা

Child কে available space অনুযায়ী **auto adjust** করতে দেয়।

```dart
Row(
  children: [
    Expanded(child: Text("Very long text")),
    Icon(Icons.star),
  ],
);
```

👉 Text জায়গা অনুযায়ী fit হয়

---

## 2️⃣ Flexible ব্যবহার করা

Overflow কমানোর জন্য **smart solution**।

```dart
Flexible(
  child: Text("Long text"),
);
```

👉 দরকার অনুযায়ী space নেয়
👉 Expanded এর মতো force করে না

---

## 3️⃣ SingleChildScrollView

Content বেশি হলে **scroll enable** করে।

```dart
SingleChildScrollView(
  child: Column(
    children: [
      // many widgets
    ],
  ),
);
```

👉 Column overflow fix করার সবচেয়ে common way

---

## 4️⃣ Wrap Widget (Row overflow এর জন্য)

Row তে জায়গা না হলে widget গুলোকে **next line এ নিয়ে যায়**।

```dart
Wrap(
  children: [
    Chip(label: Text("A")),
    Chip(label: Text("B")),
  ],
);
```

👉 Row-এর smarter version

---

## 🧠 Summary (Exam + Interview Ready)

* MainAxisAlignment → spacing control করে
* CrossAxisAlignment → alignment control করে
* Expanded → পুরো space নেয়
* Flexible → smartভাবে adjust করে
* SingleChildScrollView → scroll দিয়ে overflow fix
* Wrap → auto line break করে

---


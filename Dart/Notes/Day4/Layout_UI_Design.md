# 📌 Layout + UI Design (Flutter)

---

## 📌 More Layout Widgets

### 1️⃣ Stack

* Child widgets **এক অপরের উপরে** রাখে (overlapping)
* Image, button, badge, overlay design এ use হয়
* Child order অনুযায়ী উপরে আসে

```dart id="b95e0p"
Stack(
  children: [
    Container(color: Colors.blue, height: 200, width: 200),
    Container(color: Colors.red, height: 100, width: 100),
  ],
);
```

👉 Red box blue box এর উপর show হবে

---

### 2️⃣ Positioned

* Stack এর ভিতরে child কে **exact position** এ রাখে
* `top`, `bottom`, `left`, `right` properties use হয়

```dart id="1fnmtr"
Stack(
  children: [
    Container(color: Colors.blue, height: 200, width: 200),
    Positioned(
      top: 50,
      left: 50,
      child: Container(color: Colors.red, height: 100, width: 100),
    ),
  ],
);
```

👉 Red box blue box এর 50 px distance থেকে শুরু হবে

---

### 3️⃣ Align

* Child কে parent বা Stack এর মধ্যে **specific alignment** এ রাখে
* Alignment বা FractionalOffset use করা যায়

```dart id="lsz92v"
Stack(
  children: [
    Container(color: Colors.blue, height: 200, width: 200),
    Align(
      alignment: Alignment.topRight,
      child: Container(color: Colors.red, height: 50, width: 50),
    ),
  ],
);
```

👉 Red box top-right এ positioned হবে

---

### 4️⃣ Wrap

* Row overflow হলে child widgets **next line** এ move হয়
* Chips, tags, button groups এ use হয়
* Row/Column overflow এর ideal solution

```dart id="v9nb3r"
Wrap(
  spacing: 10, // horizontal gap
  runSpacing: 10, // vertical gap
  children: [
    Chip(label: Text("A")),
    Chip(label: Text("B")),
    Chip(label: Text("C")),
  ],
);
```

👉 Chips automatically line break করবে

---

### 🧠 Quick Idea (Banglish)

* Stack → overlapping / layers
* Positioned → exact position in Stack
* Align → alignment in parent / Stack
* Wrap → auto line break / responsive layout

---

## 📌 Styling Widgets

---

### 1️⃣ TextStyle

* Text widget-এর **appearance customize** করে
* Properties:

  * `color` → text color
  * `fontSize` → size
  * `fontWeight` → normal / bold
  * `fontStyle` → italic
  * `letterSpacing` → character spacing
  * `decoration` → underline / line-through

```dart id="9fj4p8"
Text(
  "Hello Flutter",
  style: TextStyle(
    color: Colors.blue,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
  ),
);
```

---

### 2️⃣ BoxDecoration

* Container widget-এর **background, border, radius, shadow, gradient** control করে
* Must use with `decoration:` property of Container

```dart id="2xl3p6"
Container(
  height: 100,
  width: 100,
  decoration: BoxDecoration(
    color: Colors.blue,
    border: Border.all(color: Colors.red, width: 2),
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 4,
        offset: Offset(2, 2),
      )
    ],
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.green],
    ),
  ),
);
```

---

### 3️⃣ Border

* Container বা BoxDecoration-এ border দিতে use হয়
* `Border.all()` → সব পাশে
* `Border.only()` → specific side

```dart id="ypk84r"
border: Border.all(color: Colors.red, width: 2),
border: Border.only(top: BorderSide(color: Colors.green, width: 3)),
```

---

### 4️⃣ BorderRadius

* Container / Box corners round করে
* `BorderRadius.circular()` → same radius all corners
* `BorderRadius.only()` → specific corners

```dart id="ezm4qa"
borderRadius: BorderRadius.circular(16),
borderRadius: BorderRadius.only(
  topLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
),
```

---

### 5️⃣ Gradient

* Container background-এ **color transition** effect
* `LinearGradient` → linear
* `RadialGradient` → circular

```dart id="z3f4j1"
gradient: LinearGradient(
  colors: [Colors.red, Colors.yellow],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
),
```

---

### 6️⃣ Shadow (BoxShadow)

* Container বা Text কে **depth effect** দেয়
* Properties:

  * `color` → shadow color
  * `blurRadius` → blur strength
  * `offset` → position shift

```dart id="h6kdv4"
boxShadow: [
  BoxShadow(
    color: Colors.black26,
    blurRadius: 5,
    offset: Offset(3, 3),
  )
],
```

---

### 🧠 Quick Summary (Banglish)

* Text → TextStyle
* Box → BoxDecoration
* Border → color & width
* BorderRadius → corner round
* Gradient → color transition
* Shadow → depth effect

---
---

# 📌 Images, Icons & Buttons (Flutter)

---

## 📌 Image & Icon

---

### 1️⃣ Image.asset

* App-এর **local asset** থেকে image load করে
* Local image use করতে **pubspec.yaml** এ declare করতে হয়

```dart id="v9uq8p"
Image.asset(
  'assets/images/flutter.png',
  height: 100,
  width: 100,
);
```

**Steps:**

1. `assets/images/` folder বানাও
2. Image file রাখো
3. `pubspec.yaml` এ declare করো:

```yaml id="x0qz9b"
flutter:
  assets:
    - assets/images/flutter.png
```

---

### 2️⃣ Image.network

* Internet থেকে image load করে
* Network latency থাকায় **placeholder/fallback** handle করা ভালো

```dart id="ztw2mn"
Image.network(
  'https://flutter.dev/images/flutter-logo-sharing.png',
  height: 100,
  width: 100,
);
```

---

### 3️⃣ Icon

* Single icon display করার জন্য
* Color, size customize করা যায়

```dart id="o2p8av"
Icon(
  Icons.favorite,
  color: Colors.red,
  size: 40,
);
```

---

### 4️⃣ Icons

* Flutter built-in icons class
* Hundreds of ready-to-use icons available

```dart id="k4xv5p"
Icon(Icons.home),
Icon(Icons.phone),
Icon(Icons.alarm),
```

**Quick Tips:**

* `Image.asset` → local
* `Image.network` → online
* `Icon` → icon widget
* `Icons` → predefined set
* Always set **size & color** for consistency

---

## 📌 Buttons & Interactions

Flutter এ buttons হলো **user input / click** handle করার main widget।
Mainly ৪ ধরনের button use হয়:

---

### 1️⃣ ElevatedButton

* Raised button, **background color** থাকে
* Press করলে **shadow effect** আসে
* Modern UI app buttons mostly ElevatedButton

```dart id="exr3w2"
ElevatedButton(
  onPressed: () {
    print("Button pressed");
  },
  child: Text("Click Me"),
);
```

**Custom Style Example:**

```dart id="m9d4p7"
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  child: Text("Click Me"),
);
```

---

### 2️⃣ TextButton

* Flat button, **background নেই**
* Toolbar / simple actions এ mostly use হয়

```dart id="g7z5x2"
TextButton(
  onPressed: () {},
  child: Text("Text Button"),
);
```

**Custom Style:**

```dart id="v3p8r1"
TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(primary: Colors.red),
  child: Text("Delete"),
);
```

---

### 3️⃣ OutlinedButton

* **Border থাকে**, background transparent
* Mostly secondary actions এর জন্য

```dart id="q5l2k8"
OutlinedButton(
  onPressed: () {},
  child: Text("Outlined"),
);
```

**Custom Style:**

```dart id="j9d7b3"
OutlinedButton(
  onPressed: () {},
  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.green, width: 2),
  ),
  child: Text("Submit"),
);
```

---

### 4️⃣ IconButton

* Button হিসেবে **icon** use করা হয়
* Press করলে **onPressed** trigger হয়

```dart id="z1p4k6"
IconButton(
  onPressed: () {
    print("Icon clicked");
  },
  icon: Icon(Icons.favorite, color: Colors.red, size: 30),
);
```

---

### 🧠 Quick Tips

* `ElevatedButton` → primary actions
* `TextButton` → simple/secondary actions
* `OutlinedButton` → secondary with border
* `IconButton` → icon click actions
* Always set **onPressed**, otherwise button disabled হয়

---


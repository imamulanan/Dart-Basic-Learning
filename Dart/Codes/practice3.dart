void greet() {
  print("Hello Arif");
}

int add(int a, int b) {
  return a + b;
}

int square(int x) => x * x;


void greet2([String? name]){
  print("Hello ${name ?? 'Guest'}");
}


bool checkLogin(String email, String password){
  if(email == "anan@gmail.com" && password == "12345"){
    return true;
  } else {
    return false;
  }
}


Future<String> fetchData() async {
  // simulate a network call
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched from server";
}

Future<int> addAsync(int a, int b) async {
  await Future.delayed( Duration(seconds: 1));
  return a + b;
}

Future<String> task1() async {
  await Future.delayed(Duration(seconds: 2));
  return "Task 1 completed";
}

Future<String> task2() async {
  await Future.delayed(Duration(seconds: 1));
  return "Task 2 completed";
}


Future<String> getUserData() async {
  await Future.delayed( Duration(seconds: 2));
  return "User: Arif, Age: 20";
}


// parallel Future Execution

Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "User data fetched";
}

Future<String> fetchPosts() async {
  await Future.delayed(Duration(seconds: 3));
  return "Posts data fetched";
}

void main() async {
  greet(); // call function

  int sum = add(5, 10); // call function with arguments
  print("Sum: $sum");

  print(square(5)); // call arrow function

  greet2();
  greet2("Anan");

  print(checkLogin("anan@gmail.com", "12345"));


  print("Fetching data...");
  String data = await fetchData();
  print(data);
  print("Done");


  int result = await addAsync(5, 10);
  print("Result: $result");


  String t1 = await task1();
  print(t1);

  String t2 = await task2();
  print(t2);


  print("Fetching user data...");
  String userData = await getUserData();
  print(userData);
  


  // parallel Future Execution
  print("Fetching user and posts data...");

  List<String> results = await Future.wait([fetchUser(), fetchPosts()]);

  for (var res in results) {
    print(res);
  }


  print("Flutter".startsWith("Fl"));


  String email = "anan@gmial.com";

  if (email.contains("@") && email.endsWith(".com")){
    print("Valid email");
  } else {
    print("Invalid email");
  }
}  
  
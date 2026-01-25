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
}

  
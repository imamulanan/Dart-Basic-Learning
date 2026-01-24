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

void main() {
  greet(); // call function

  int sum = add(5, 10); // call function with arguments
  print("Sum: $sum");

  print(square(5)); // call arrow function

  greet2();
  greet2("Anan");

  print(checkLogin("anan@gmail.com", "12345"));
}

  
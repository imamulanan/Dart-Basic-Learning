void main() {
  var name = "Anan";
  final university = "PSTU";
  const country = "Bangladesh";

  int age = 25;
  double cgpa = 3.75;
  bool isStudent = true;

  List<String> Skills = ["Dart", "Flutter", "Firebase"];
  Map<String, dynamic> profile = {
    "name": name,
    "age": age,
    "university": university,
    "country": country,
  };

  print(profile);

  if (isStudent) {
    print("$name is a student.");
  } else {
    print("$name is not a student.");
  }
  ;

  String password = "12345";

  if(password == "12345"){
    print("Login Successful");
  } else {
    print("Login Failed");
  }


  
}

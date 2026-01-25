// void main() {
//   try {
//     int result = 12 ~/ 0; // risky: divide by zero
//     print(result);
//   } catch(e, s) {
//     print("Error occurred: $e");
//     print("Stack trace: $s");
//   }finally{
//     print("Execution completed.");
//   }


// void checkAge(int age) {
//   if(age < 18) {
//     throw Exception("Age must be 18 or above");
//   } else {
//     print("Access granted");
//   }
// }

// void main() {
//   try {
//     checkAge(15);
//   } catch(e) {
//     print(e); // Age must be 18 or above
//   }
// }

// void main() {
//   try {
//     int result = 12 ~/ 0;
//   } on IntegerDivisionByZeroException {
//     print("Cannot divide by zero!");
//   } catch(e) {
//     print("Other error: $e");
//   }
// }




void main(){
  List<int> numbers = [1, 2, 3];

  try {
    print(numbers[5]); // risky: index out of range
  } catch(e) {
    print("Error: $e");
  }finally{
    print("Finished attempting to access list.");
  }
}
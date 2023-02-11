// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

void printStudent(String university,
    {required String name, int? age, bool activo = true}) {
  print(university);
  print(name);
  print(age);
  print(activo);
}

// This is where the app starts executing.
void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.

  printStudent('university', name: 'name', age: 33);
}

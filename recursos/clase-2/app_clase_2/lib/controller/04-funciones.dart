// Define a function.

// positional parameters
void printInteger(int aNumber, int bNumber) {
  print('The number is $aNumber.'); // Print to console.
  print('The number is $bNumber.'); // Print to console.
}

// Parametros nombrados - Named parameters
void printStudent(
    {required String name,
    int? age,
    bool activo = true,
    required int aNumber,
    required int bNumber}) {
  print(name);
  print(age);
  print(activo);
}

// This is where the app starts executing.
void main() {
  var numberA = 42; // Declare and initialize a variable.
  var numberB = 5; // Declare and initialize a variable.
  printInteger(numberB, numberA); // Call a function.

  printStudent(aNumber: numberA, name: "Test", bNumber: numberB, age: 54);
}

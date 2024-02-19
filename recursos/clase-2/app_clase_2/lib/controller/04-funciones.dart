// Define a function.

// positional parameters
void printInteger(int aNumber, int bNumber) {
  print('The number is $aNumber  $bNumber.'); // Print to console.
}

// Parametros nombrados - Named parameters
void printStudent(
    {required String name, required int age, bool activo = true}) {
  print(name);
  print(age);
  print(activo);
}

// This is where the app starts executing.
void main() {
  var numberA = 42; // Declare and initialize a variable.
  var numberB = 5; // Declare and initialize a variable.
  printInteger(numberB, numberA); // Call a function.

  printStudent(name: "TEST", age: 3, activo: false);
}

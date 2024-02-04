// Define a function.

// positional parameters 
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// Parametros nombrados - Named parameters 
void printStudent({required String name, int? age, bool activo = true}) {
  print(name);
  print(age);
  print(activo);
}

// This is where the app starts executing.
void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.

  printStudent(name: 'name', age: 33);
}

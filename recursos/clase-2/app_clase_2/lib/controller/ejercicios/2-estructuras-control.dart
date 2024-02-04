import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync().toString());

  if (numero % 2 == 0) {
    print("El número $numero es par");
  } else {
    print("El número $numero es impar");
  }

  for (int i = 1; i <= 100; i++) {
    print(i);
  }

  List<int> numeros = [1, 2, 3, 4, 5];
  double promedio = 0;

  for (int numero in numeros) {
    promedio += numero;
  }

  promedio = promedio / numeros.length;

  print("Promedio: $promedio");
}

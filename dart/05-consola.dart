import 'dart:io';

void main(List<String> args) {
  print("Ingrese número:");
  String? input = stdin.readLineSync().toString();
  print("el numero es $input");
}

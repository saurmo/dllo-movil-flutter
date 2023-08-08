
import 'dart:io';

void main(List<String> args) {
  print("Ingrese número:");
  String? input = stdin.readLineSync().toString();
  print("el numero es $input");
}


// Pueden preguntar la cantidad de pacientes
// que van a ingresar. 
// Con la cantidad de pacientes pueden hacer un for

// 5 pacientes:
// P1: Hombre, Soltero, 45
// P2: Mujer, Soltera, 30
// P3: Hombre, Casado, 65
// P4: Mujer, Soltera, 22
// P5: Hombre, Casado, 45

// Total pacientes: 5
// Total hombres solteros: 1
// Total hombres: 3
// Porcentaje de hombres solteros: 1/3
// Acumulador edad hombres casados: 110
// Total hombres casados: 2
// Edad promedio hombres casados: 110/2
// Total de mujeres solteras: 2
// Total solter@s: 3
// Porcentaje mujeres solteras: 2/3
// Un centro asistencial para lisiados recibe varios pacientes por semana,
// para que les hagan alguna prótesis.
// Teniendo en cuenta:
//  - sexo (1. Hombre, 2. Mujer)
//  - estado civil (1. Soltero, 2.Casado 3. Viudo)
//  - edad.
// Diseñe un algoritmo que determine:​
//  - El porcentaje de hombres solteros que allí han asistido en una semana
//    respecto al total de hombres asistentes.​
//  - La edad promedio de hombres casados.​
//  - El porcentaje de mujeres solteras respecto al total de personas solteras.

// saurrego@udemedellin.edu.co  - Actividad 1

// # Paciente Sexo  Estado Civil  Edad
// 1  M S 45  Punto 1 50%
// 2  M S 15  Punto 2 25
// 3  F S 10  Punto 3 50
// 4  M C 30
// 5  F S 10
// 6  F C 25
// 7  M C 20

import 'dart:io';

enum Sexo { M, F }

class Persona {
  Sexo? sexo;
  String? estadoCivil;
  int? edad;

  Persona(
      {required Sexo sexo, required String estadoCivil, required int edad}) {
    this.sexo = sexo;
    this.estadoCivil = estadoCivil;
    this.edad = edad;
  }

  Persona.fromInput(Sexo sexo, String estadoCivil, int edad) {
    this.edad = edad;
    this.estadoCivil = estadoCivil;
    this.sexo = sexo;
  }
  Persona.fromJson(Map<String, dynamic> json) {
    this.edad = json["edad"];
    this.estadoCivil = json["estadoCivil"];
    this.sexo = json["sexo"];
  }
  Persona.origin() {
    this.edad = 0;
    this.estadoCivil = "";
    this.sexo = Sexo.M;
  }
}

double porcentajeHombreSolteros(List<Persona> personas) {
  double porcentaje = 0;
  int totalHombres = 0, totalHombresSolteros = 0;
  for (var i = 0; i < personas.length; i++) {
    var persona = personas[i];
    if (persona.sexo == Sexo.M) {
      totalHombres++;
      if (persona.estadoCivil == "S") {
        totalHombresSolteros++;
      }
    }
  }
  porcentaje = (totalHombresSolteros * 100) / totalHombres;
  return porcentaje;
}

Persona obtenerDatosPersona({required int nroPersona, String? titulo}) {
  //Ingreso de datos
  print("$titulo #$nroPersona: Ingrese el sexo (M) Masculino - (F) Femenino");
  String sexo = stdin.readLineSync().toString();
  print(
      "$titulo #$nroPersona: Ingrese el estado civil (S) Soltero, (C) Casado (V) Viudo)");
  String estadoCivil = stdin.readLineSync().toString();
  print("$titulo #$nroPersona: Ingrese la edad");
  int edad = int.parse(stdin.readLineSync().toString());

  // Creacion de la persona
  Sexo sexoEnum = sexo == "M" ? Sexo.M : Sexo.F;
  Persona persona = Persona(
    edad: edad,
    sexo: sexoEnum,
    estadoCivil: estadoCivil,
  );
  // Persona persona1 = Persona.fromInput(sexoEnum, estadoCivil, edad);
  // Persona persona2 = Persona.fromJson(
  //     {"sexo": sexo, "estado-civil": estadoCivil, "edad": edad});
  // Persona persona3 = Persona.origin();
  // persona3.edad = 3;
  // persona3.sexo = Sexo.M;

  return persona;
}

void main(List<String> args) {
  print("Ingrese: 1 para continuar ingresando pacientes o 0 para salir.");
  String input = stdin.readLineSync().toString();
  int nroPersonas = 0;
  Persona? persona = null;
  List<Persona> personas = [];
  while (input == "1") {
    nroPersonas++;
    persona = obtenerDatosPersona(nroPersona: nroPersonas, titulo: "Paciente");
    personas.add(persona);

    print("Ingrese: 1 para continuar ingresando pacientes o 0 para salir.");
    input = stdin.readLineSync().toString();
  }
  double porcentajeHombres = porcentajeHombreSolteros(personas);
  print("Porcentaje de hombres solteros $porcentajeHombres");
}

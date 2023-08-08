import 'dart:developer';
import 'dart:io';

class Persona {
  String genero = "";
  String estadoCivil = "";
  int? edad = 0;
  String nombre = "";
  String apellido = "";
  String _nombreCompleto = "";

  Persona(this.genero, this.estadoCivil, this.edad);

  Persona.otroConstructor(
      {required String genero,
      required String estadoCivil,
      int? edad,
      String nombre = "NN"}) {
    this.genero = genero;
    this.estadoCivil = estadoCivil;
    this.edad = edad;
    this.nombre = nombre;
  }

  Persona.fromJson(
      {required String genero,
      required String estadoCivil,
      int? edad,
      String nombre = "NN"}) {
    this.genero = genero;
    this.estadoCivil = estadoCivil;
    this.edad = edad;
    this.nombre = nombre;
  }

  _crearNombreCompleto() {
    return "${this.nombre} ${this.apellido}";
  }
}

Persona crearPersona() {
  try {
    print("Ingrese genero: 1.Hombre 2.Mujer");
    String genero = stdin.readLineSync().toString();
    print("Ingrese estado civil: S.Solter@ C.Casad@ ");
    String estadoCivil = stdin.readLineSync().toString();
    print("Ingrese la edad:");
    int edad = int.parse(stdin.readLineSync().toString());

    // Persona miPersona = Persona(genero, estadoCivil, edad);
    Persona miPersona =
        Persona.fromJson(genero: genero, estadoCivil: estadoCivil, edad: edad);
    print(miPersona._nombreCompleto);

    return miPersona;
  } catch (e) {
    throw "Error al ingresar los datos";
  }
}

double porcentajeHombresSolteros(List<Persona> personas) {
  double porcentaje = 0;
  int hombres = personas.where((x) => x.genero == "1").length;
  int hombresSolteros =
      personas.where((x) => x.genero == "1" && x.estadoCivil == "S").length;
  porcentaje = hombresSolteros / hombres;
  return porcentaje;
}

void imprimirResultados(List personas, double hombresSolteros) {
  print("Cantidad de personas:" + personas.length.toString());
  print("Hombres solteros: %" + hombresSolteros.toStringAsFixed(2));
}

void main() {
  // Persona p1 = Persona(genero: "1", estadoCivil: "S", edad: 45);
  Persona p2 = Persona.otroConstructor(estadoCivil: "S", genero: "1", edad: 45);
  print(p2._crearNombreCompleto());

  Persona p3 = Persona.fromJson(genero: "1", estadoCivil: "S");

  // List<Persona> personas = [];
  // Persona persona;
  // for (var i = 0; i < 5; i++) {
  //   persona = crearPersona();
  //   personas.add(persona);
  //   print("");
  // }
  // double hombresSolteros = porcentajeHombresSolteros(personas);
  // imprimirResultados(personas, hombresSolteros);
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
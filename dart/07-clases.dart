class Estudiante {
  String nombre = "";
  String apellido = "";
  Map<String, dynamic> semestres = {};
}

void main(List<String> args) {
  Estudiante estudiante1 = Estudiante();
  estudiante1.nombre = "Santiago";

  // Agregar info a semestres
  estudiante1.semestres = {
    "1": {
      "materias": ["INTRO", "ALGORITMOS"]
    },
    "2": {
      "materias": ["POO"]
    }
  };

  // Imprimir semestre 2
  print(estudiante1.nombre);
  print(estudiante1.semestres["1"]["materias"][1]);
}

// ignore_for_file: unused_local_variable

void main() {
  // VARIABLES EXPLICITAS
  // Básicos
  String nombre = 'Carlos';
  int anio = 2023;
  double diametro = 1.70;
  bool esPositivo = true;

// Colecciones
  List<String> paises = ["Colombia"];
  Set<String> names2 = {};
  Map<int, String> nobleGases2 = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  Map<String, dynamic> images = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
    'tag1': 12,
    "tag2": { "name": "test" }
  };

  // VARIABLE IMPLICITAS
  var name = 'Santiago';
  // name = 12; // No se puede cambiar el tipo de dato
  const year = 1977;
  // year = 200; // No se puede cambiar el valor de la variable

  dynamic diameter = 3.7;
  diameter = "TEST"; // Si se puede cambiar el valor y el ripo

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var names = <String>{};
  var isReal = false;
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

// Valores por defecto (null)
// Null safety
  String? testerName;
  print(testerName);

  int valorSemestre = 50000000;
  print("UdeM $valorSemestre");
  print("UdeM \$$valorSemestre");


}

enum Estado { ACTIVO, INACTIVO, SUSPENDIDO }

class Persona {
  String nombre = "";
  Estado estado = Estado.INACTIVO;

  // Persona(String nombre) {
  //   this.nombre = nombre;
  // }
  Persona(this.nombre);

  // Persona({required String nombre}) {
  //   this.nombre = nombre;
  // }

  // Persona({required this.nombre});

  Persona.empty() {
    this.nombre = "";
    this.estado = Estado.INACTIVO;
  }
}

class Mascota {
  String? nombre;

  Mascota(String nombre) {
    this.nombre = nombre;
  }
}

void main(List<String> args) {
  Persona empty = Persona.empty();
  Persona p1 = Persona("Sara");

  if (p1.estado == Estado.ACTIVO) {
    print("Activo");
  } else {
    print(p1.estado.name);
    print(Estado.values);
  }

  if (p1.estado == "ACTIVO") {
    print("Activo");
  } else {
    print(p1.estado.name);
    print(Estado.values);
  }
  Persona persona1 = Persona("Santiago");
  print((persona1 as Persona).nombre);
}

class Persona {
  String nombre;
  int edad;
  String ciudadNatal;

  Persona(this.nombre, this.edad, this.ciudadNatal);

  void saludar() {
    print("Hola, mi nombre es $nombre");
  }
}

class Coche {
  String marca;
  String modelo;
  int anioDeFabricacion;

  Coche(this.marca, this.modelo, this.anioDeFabricacion);

  void mostrarInformacion() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Año de fabricación: $anioDeFabricacion");
  }
}

class Animal {
  String nombre;
  String tipo;
  String raza;

  Animal(this.nombre, this.tipo, this.raza);

  void hacerSonido() {
    print("...");
  }
}

void main() {
  Persona persona = Persona("Bard", 1, "Medellín");
  persona.saludar();

  Coche coche = Coche("Toyota", "Corolla", 2023);
  coche.mostrarInformacion();

  Animal perro = Animal("Sombra", "Grande","Labrador");
  perro.hacerSonido();
}

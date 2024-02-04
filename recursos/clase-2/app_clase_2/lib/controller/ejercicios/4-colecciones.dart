void main() {
  List<String> nombres = ["Juan", "María", "Pedro"];

  nombres.add("Ana");
  nombres.remove("Pedro");

  print("Nombres: $nombres");

  Map<String, String> paises = {
    "Colombia": "Bogotá",
    "Argentina": "Buenos Aires",
    "España": "Madrid"
  };

  String? capital = paises["Colombia"];
  print("Capital de Colombia: $capital");

  Set<int> numeros = {1, 2, 3, 4, 5};

  bool estaPresente = numeros.contains(3);
  print("El número 3 está presente: $estaPresente");
}

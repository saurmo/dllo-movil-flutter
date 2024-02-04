void main() {
  double areaTriangulo(double base, double altura) {
    return (base * altura) / 2;
  }

  List<int> ordenarNumeros(List<int> numeros) {
    numeros.sort();
    return numeros;
  }

  void imprimirLista(List<String> lista) {
    for (String elemento in lista) {
      print(elemento);
    }
  }

  double area = areaTriangulo(5.0, 10.0);
  print("Área del triángulo: $area");

  List<int> numerosDesordenados = [5, 2, 4, 1, 3];
  List<int> numerosOrdenados = ordenarNumeros(numerosDesordenados);
  print("Números ordenados: $numerosOrdenados");

  List<String> nombres = ["Juan", "María", "Pedro"];
  imprimirLista(nombres);
}

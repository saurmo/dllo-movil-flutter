void main(List<String> args) {
  List<String> nombres = ["Carlos", "Juan"];
  List<String> nombres2 = ["Sara", "Carolina"];
  List<String>? nombres3 = null;
  List<String> todosNombres = ["Arturo", ...nombres, ...nombres2, ...?nombres3];
  List<dynamic> matriz = [nombres3, nombres2];
  print(todosNombres);
  print(matriz);
}

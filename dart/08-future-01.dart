void main(List<String> args) async {
  print("Inicio");
  String value = await getEstudiantes();
  print(value);
  print("Fin");
}

Future getEstudiantes() {
  // Simulación de un Future con duración
  return Future.delayed(Duration(seconds: 5), () {
    return "Hola Mundo";
  });
}

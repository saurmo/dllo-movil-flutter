import 'package:flutter_application_2/controllers/JuegoController.dart';

void main(List<String> args) async {
  JuegoController juegoController = JuegoController();
  String pregunta = await juegoController.obtenerPreguntaHttp();
  print(pregunta);
  String respuesta = juegoController.ingresarRespuesta();
  bool resultado = juegoController.obtenerResultado(respuesta);
  print("Resultado:${resultado ? "Gano" : "Perdio "}");
}

import 'package:flutter_application_2/controllers/JuegoController.dart';

void main(List<String> args) {
  JuegoController juegoController = JuegoController();
  String pregunta = juegoController.obtenerPregunta();
  print(pregunta);
  String respuesta = juegoController.ingresarRespuesta();
  bool resultado = juegoController.obtenerResultado(respuesta);
  print("Resultado:${resultado ? "Gano" : "Perdio "}");
}

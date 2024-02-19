
import 'package:flutter_application_2/models/Adivinanza.dart';

class JuegoController {
  Adivinanza adivinanza = Adivinanza.empty();

  JuegoController() {
    // adivinanza = adivinanza.generarAdivinanza();
  }

  obtenerPregunta() async {
    adivinanza = await adivinanza.generarAdivinanzaHttp();
    print(adivinanza);
    return adivinanza.pregunta;
  }
}

void main(List<String> args) async {
  JuegoController controller = JuegoController();
  String pregunta = await controller.obtenerPregunta();
  print("Adivina: ${pregunta}");
  String respuesta = controller.adivinanza.pedirRespuesta();
  var esCorrecta = controller.adivinanza.evaluarRespuesta(respuesta: respuesta);
  if (esCorrecta) {
    print("Muy bien");
  } else {
    print("Que mal");
  }
}

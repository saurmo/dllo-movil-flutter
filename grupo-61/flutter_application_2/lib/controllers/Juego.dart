
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

void main(List<String> args) {
  JuegoController controller = JuegoController();
  print("Adivina: ${controller.obtenerPregunta()}");
  String respuesta = controller.adivinanza.pedirRespuesta();
  var esCorrecta = controller.adivinanza.evaluarRespuesta(respuesta: respuesta);
  if (esCorrecta) {
    print("Muy bien");
  } else {
    print("Que mal");
  }
}

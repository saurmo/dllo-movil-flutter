import 'package:flutter_application_2/models/Adivinanza.dart';

class JuegoController {
  late Adivinanza _adivinanza;

  JuegoController() {
    _adivinanza = Adivinanza.empty();
  }

  Adivinanza generarAdivinanza() {
    _adivinanza = _adivinanza.generarAdivinanza();
    return _adivinanza;
  }

  String obtenerPregunta() {
    generarAdivinanza();
    return _adivinanza.pregunta;
  }

  String ingresarRespuesta() {
    return _adivinanza.ingresarRespuesta();
  }

  bool obtenerResultado(String respuestaUsuario) {
    return _adivinanza.evaluarRespuesta(respuestaUsuario);
  }
}

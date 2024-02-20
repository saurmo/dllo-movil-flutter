import 'dart:io';
import 'dart:math';

class Adivinanza {
  late String pregunta;
  late String respuesta;

  Adivinanza({required this.pregunta, required this.respuesta});

  Adivinanza.empty() {
    this.pregunta = "";
    this.respuesta = "";
  }

  Adivinanza generarAdivinanza() {
    List<Adivinanza> adivinanzas = [
      Adivinanza(pregunta: '¿Qué tiene ojos y no ve?', respuesta: 'tubo'),
      Adivinanza(
          pregunta: '¿Qué es lo que tiene llaves pero no abre puertas?',
          respuesta: 'piano'),
      Adivinanza(
          pregunta: '¿Qué es lo que tiene dientes y no come?',
          respuesta: 'peine'),
      Adivinanza(
          pregunta: '¿Qué es lo que tiene agujas y no cose?',
          respuesta: 'reloj'),
      Adivinanza(
          pregunta: '¿Qué es lo que tiene corazón y no está vivo?',
          respuesta: 'artista'),
    ];

    // int random = Random().nextInt(adivinanzas.length);
    // return adivinanzas[random];
    adivinanzas.shuffle();
    return adivinanzas[0];
  }

  Future<Adivinanza> generarAdivinanzaHttp() async {
    await Future.delayed(Duration(seconds: 4));
    return generarAdivinanza();
  }

  bool evaluarRespuesta(String respuestaUsuario) {
    return respuesta.toLowerCase() == respuestaUsuario.toLowerCase();
  }

  String ingresarRespuesta() {
    print("Ingrese la respuesta:");
    return stdin.readLineSync().toString();
  }
}

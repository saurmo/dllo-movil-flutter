import 'dart:io';
import 'dart:math';

class Adivinanza {
  String pregunta = "";
  String respuesta = "";

  // Adivinanza(String pregunta, String respuesta) {
  //   this.pregunta = pregunta;
  //   this.respuesta = respuesta;
  // }

  // Adivinanza(this.pregunta, this.respuesta);

  // Adivinanza({required String pregunta, required String respuesta}) {
  //   this.pregunta = pregunta;
  //   this.respuesta = respuesta;
  // }

  Adivinanza({required this.pregunta, required this.respuesta});

  Adivinanza.empty();

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
          respuesta: 'artista')
    ];
    adivinanzas.shuffle();
    return adivinanzas[0];

    // int random = Random().nextInt(adivinanzas.length);
    // return adivinanzas[random];
  }

  Future<Adivinanza> generarAdivinanzaHttp() async {
    Adivinanza adivinanza = generarAdivinanza();
    print(adivinanza);
    await Future.delayed(Duration(seconds: 3));
    print("adivinanza");
    return adivinanza;
  }

  String pedirRespuesta() {
    print("Ingrese la respuesta: ");
    String respuesta = stdin.readLineSync().toString();
    return respuesta;
  }

  bool evaluarRespuesta({required String respuesta}) {
    return this.respuesta.toLowerCase() == respuesta.toLowerCase();
  }
}

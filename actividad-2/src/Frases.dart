import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> consultarFrases() async {
  // Creación de url
  Uri url = Uri.https("api.chucknorris.io", "/jokes/random");

  // Petición get
  http.Response response = await http.get(url);

  // Conversión de datos
  Map<String, dynamic> data = jsonDecode(response.body);

  // Captura de datos
  String? frase = data['value'];
  // ChuckNorriesFrase frase = ChuckNorriesFrase.fromStringObject(response.body)
  // frase.value
  print(frase);
}

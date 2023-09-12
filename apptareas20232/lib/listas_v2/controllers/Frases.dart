import 'dart:convert';

import 'package:http/http.dart' as http;

class Test {
  static consultarFrases() async {
    // Creación de url
    String? id;
    Uri url = Uri.https("api.thecatapi.com", "v1/images/search");

    // Petición get
    http.Response response = await http.get(url);
    print(response.body);
    // Conversión de datos
    Map<String, dynamic> data = jsonDecode(response.body);
    id = data["id"];
    // Captura de datos
    return data;
  }
}

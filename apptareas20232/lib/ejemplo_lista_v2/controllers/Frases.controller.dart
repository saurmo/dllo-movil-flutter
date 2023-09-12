import 'dart:convert';

import 'package:apptareas20232/ejemplo_lista_v2/controllers/HttpService.dart';
import 'package:apptareas20232/ejemplo_lista_v2/models/Frase.model.dart';

class FrasesController {
  HttpService httpService = HttpService();

  Future<Frase> getFrases() async {
    Uri url = Uri.https("api.chucknorris.io", "/jokes/random");
    dynamic response = await httpService.get(url);
    Map<String, dynamic> json =
        jsonDecode(response.body) as Map<String, dynamic>;
    Frase frase = Frase.fromJson(json);
    return frase;
  }
}

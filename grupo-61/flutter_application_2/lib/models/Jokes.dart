import "package:http/http.dart" as http;
import 'dart:convert';

class Jokes {
  // - Crear un constructor nombrado que
  // capture el Map<String,dynamic> y crear los
  // atributos en la clase (como mínimo id, url, value)
// - Crear un método para imprimir o sobrescribir el toString

  String id = "";
  String url = "";
  String value = "";

  // Constructor por defecto
  Jokes();

// Constructor nombrado
  Jokes.fromJson({required Map<String, dynamic> json}) {
    id = json["id"] ?? "";
    url = json["url"];
    value = json["value"];
  }

  Future<Map<String, dynamic>> obtenerJoke() async {
    var url = Uri.parse("https://api.chucknorris.io/jokes/random");
    Future<http.Response> futureResponse = http.get(url);
    http.Response response = await futureResponse;
    Map<String, dynamic> responseData =
        jsonDecode(response.body) as Map<String, dynamic>;
    return responseData;
  }

  @override
  String toString() {
   print("Id: $id =  Value:$value");
    return value;
  }
}

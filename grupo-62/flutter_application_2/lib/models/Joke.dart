import 'dart:convert';

import 'package:http/http.dart' as http;

class Joke {
  late String iconUrl;
  late String id;
  late String url;
  late String value;

  Joke();

  Joke.fromJson(Map<String, dynamic> jsonJoke) {
    id = jsonJoke["id"] ?? "";
    iconUrl = jsonJoke["icon_url"] ?? "";
    url = jsonJoke["url"] ?? "";
    value = jsonJoke["value"] ?? "";
  }

  Future<Joke> getJokeFromApi() async {
    Uri url = Uri.parse("https://api.chucknorris.io/jokes/random");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String body = response.body;
      Map<String, dynamic> jsonJoke = jsonDecode(body);
      return Joke.fromJson(jsonJoke);
    } else {
      throw "Error al cargar la api";
    }
  }
}

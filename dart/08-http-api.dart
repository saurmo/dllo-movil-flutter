import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  String host = "pokeapi.co";
  String path = "/api/v2/pokemon/";

  List<Pokemon> pokemos = [];

  getPokemons(host, path).then((result) {
    String body = result.body;
    var resultJson = jsonDecode(body);
    for (var element in resultJson["results"]) {
      pokemos.add(Pokemon.fromJson(element));
    }
    print(pokemos);
  });
}

Future<http.Response> getPokemons(String host, String path) async {
  Uri url = Uri.http(host, path);
  var result = await http.get(url);
  return result;
}
// 
class Pokemon {
  late String name;
  late String url;

  Pokemon.fromJson(Map<String, dynamic> json) {
    this.name = json["name"];
    this.url = json["url"];
  }

  @override
  String toString() {
    return name.toLowerCase();
  }
}

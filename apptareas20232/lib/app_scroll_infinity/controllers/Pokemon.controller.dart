import 'dart:convert';

import 'package:apptareas20232/app_scroll_infinity/models/Pokemon.dart';
import 'package:http/http.dart' as http;

class PokemonController {
  Future<List<Pokemon>> getPokemons({required int offset}) async {
    List<Pokemon> pokemons = [];
    String url = "https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=20";

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List results = jsonDecode(response.body)["results"] as List;
      results.forEach((element) {
        pokemons.add(Pokemon(name: element["name"], url: element["url"]));
      });
    }
    return pokemons;
  }
}

void main(List<String> args) {
  PokemonController();
}

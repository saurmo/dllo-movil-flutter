import 'package:flutter_application_2/models/Jokes.dart';

void main(List<String> args) async {
  Jokes jokes = Jokes();
  Map<String, dynamic> json = await jokes.obtenerJoke();
  jokes = Jokes.fromJson(json: json);
  print(jokes);
}

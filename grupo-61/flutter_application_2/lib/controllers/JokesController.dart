import 'package:flutter_application_2/models/Jokes.dart';

void main(List<String> args) async {
  Jokes jokes = Jokes();
  await jokes.obtenerJoke();
}

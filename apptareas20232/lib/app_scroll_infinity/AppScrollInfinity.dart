import 'package:apptareas20232/app_scroll_infinity/views/ListViewPokemons.dart';
import 'package:flutter/material.dart';

class AppScrollInfinity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppScrollInfinity();
  }
}

class _AppScrollInfinity extends State {
  bool switch1 = false;
  String? formato = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Scroll Infinity")),
      body: ListViewPokemons(),
    );
  }
}

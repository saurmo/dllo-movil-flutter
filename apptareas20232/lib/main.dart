import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/ejemplo_lista_v2/views/home.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createScaffold(),
      routes: {
        "lugares": (context) => ListZones(),
        "agenda": (context) => AgendaMain(),
        "frases": (context) => HomeFrases(),
      },
    );
  }
}

createScaffold() {
  List examples = [
    {"name": "Lista de lugares", "route":""},
    {"name": "Agenda de contactos", "route":"agenda"},
    {"name": "Lista de frases", "route":"frases"}
  ];

  return Scaffold(
    appBar: AppBar(
      title: const Text("Aplicación 2023 2"),
    ),
    body: ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]["name"]),
          onTap: () {
            Navigator.pushNamed(
                context,examples[index]["route"]);
          },
        );
      },
      itemCount: examples.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
    ),
  );
}

import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/ejemplo_lista_v2/views/home.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/listas_v2/listav2.dart';
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
        "places": (context) => ListZones(),
        "agenda": (context) => AgendaMain(),
        "bases1": (context) => IconsTextsImages(),
        "bases2": (context) => RowsColumnsContainers(),
        "musica": (context) => ListaV2()
      },
    );
  }
}

createScaffold() {
  List examples = [
    {"name": "Widgets básicos Primera parte", "route": "bases1"},
    {"name": "Widgets básicos Segunda parte", "route": "bases2"},
    {"name": "Lista de lugares", "route": "places"},
    {"name": "Agenda de contactos", "route": "agenda"},
    {"name": "Lista musical", "route": "musica"},
  ];

  return Scaffold(
    appBar: AppBar(title: const Text("Lista de Apps 2023-2")),
    body: ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]["name"]),
          onTap: () {
            routing(context, examples[index]["route"]);
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

void routing(BuildContext context, String route) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => AgendaMain(),
  //   ),
  // );
  Navigator.pushNamed(context, route);
}

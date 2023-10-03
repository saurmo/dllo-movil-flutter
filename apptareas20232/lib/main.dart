import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/app_bottom_nav/view/AppBottom.dart';
import 'package:apptareas20232/app_form_v2/AppFormsV2.dart';
import 'package:apptareas20232/app_forms_v1/AppForms.dart';
import 'package:apptareas20232/app_gestos/AppGestos.dart';
import 'package:apptareas20232/app_scroll_infinity/AppScrollInfinity.dart';
import 'package:apptareas20232/bases/IconsTextsImages.dart';
import 'package:apptareas20232/bases/rowsColumnsContainers.dart';
import 'package:apptareas20232/ejemplo_lista_v2/views/home.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/listas_v2/listav2.dart';
import 'package:apptareas20232/styles.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        "frases": (context) => HomeFrases(),
        "app_bottom_nav": (context) => AppBottom(),
        "app_form_v1": (context) => AppForms(),
        "app_form_v2": (context) => AppFormsV2(),
        "app_gestos": (context) => AppGestos(),
        "app_scroll": (context) => AppScrollInfinity(),
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
    {"name": "Lista frases", "route": "frases"},
    {"name": "App Bottom Nav", "route": "app_bottom_nav"},
    {"name": "App Formularios v1", "route": "app_form_v1"},
    {"name": "App Formularios v2", "route": "app_form_v2"},
    {"name": "App Gestos", "route": "app_gestos"},
    {"name": "App Scroll Infinity", "route": "app_scroll"},
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

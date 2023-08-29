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
        "home": (context) => ListZones(),
        "detailPlace": (context) => DetailZone(),
      },
    );
  }
}

createScaffold() {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Aplicación 2023 2"),
    ),
    body: createHome(),
  );
}

createHome() {
  return const ListZones();
  // String url =
  //     "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg";
  // String title = "Cascada Salto del Buey";
  // String subtitle = "La ceja, Antioquia";
  // String description =
  //     "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.";
  // int stars = 50;
  // return DetailZone(
  //     url: url,
  //     title: title,
  //     subtitle: subtitle,
  //     stars: stars,
  //     description: description);
}

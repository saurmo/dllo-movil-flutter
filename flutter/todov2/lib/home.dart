import 'package:flutter/material.dart';

import 'package:todov2/app_ejemplo_1/controller/User.dart';

class HomeApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeApps();
  }
}

class _HomeApps extends State<HomeApps> {
  List<String> appsFlutter = ["Bases", "Listas y navigation bar", "Cards"];

  fillListView() {
    var appsWidgets = appsFlutter
        .map((e) => Card(
              elevation: 5,
              child: Column(
                children: [
                  ListTile(
                    title: Text(e),
                    subtitle: Text(e),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text("Mostrar descripción")),
                      TextButton(onPressed: () {}, child: const Text("Ver app"))
                    ],
                  )
                ],
              ),
            ))
        .toList();
    return appsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: fillListView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeApps extends StatefulWidget {
  const HomeApps({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeApps();
  }
}

class _HomeApps extends State<HomeApps> {
  List<App> appsFlutter = App.getApps();

  fillListView(context) {
    var appsWidgets = appsFlutter.map(
      (app) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          elevation: 5,
          child: Column(
            children: [
              ListTile(
                title: Text(app.title),
                subtitle: Text(app.subtitle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Mostrar descripción")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, app.pageName);
                      },
                      child: const Text("Ver app"))
                  // TextButton(onPressed: , )
                ],
              )
            ],
          ),
        );
      },
    ).toList();
    return appsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50),
        children: fillListView(context),
      ),
    );
  }
}

class App {
  late String title;
  late String subtitle;
  late String description;
  late String pageName;

  App(
      {required this.title,
      required this.subtitle,
      required this.description,
      required this.pageName}) {}

  static getApps() {
    return [
      App(
        title: "Bases",
        subtitle: "Widgets básicos",
        description:
            "Muestra los siguientes widgets básicos: Columnas, Rows, Contenedores, Textos, Botones, Imagenes",
        pageName: "home_bases",
      ),
      App(
        title: "Formulario",
        subtitle: "Ejemplo de formularios",
        description:
            "Muestra los siguientes widgets básicos: Columnas, Rows, Contenedores, Textos, Botones, Imagenes",
        pageName: "home_form",
      ),
      App(
        title: "Infinity Scroll",
        subtitle: "Ejemplo de listview con imagenes e infinity scroll",
        description: "",
        pageName: "home_infinity_scroll",
      ),
      App(
        title: "Infinity Scroll en clase",
        subtitle: "Ejemplo de listview con imagenes e infinity scroll",
        description: "",
        pageName: "home_infinity_scroll_class",
      ),
      App(
        title: "Autenticación con externos",
        subtitle: "Google",
        description: "",
        pageName: "home_external_auth",
      ),
      // App(
      //   title: "Inputs",
      //   subtitle: "Widgets básicos para formularios",
      //   description:
      //       "Muestra los siguientes widgets básicos: Columnas, Rows, Contenedores, Textos, Botones, Imagenes",
      //   pageName: "inputs_screen",
      // )
    ];
  }
}

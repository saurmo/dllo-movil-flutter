import 'package:apptareas20232/app_bottom_nav/view/AddPageBottom.dart';
import 'package:apptareas20232/app_bottom_nav/view/HomePageBottom.dart';
import 'package:apptareas20232/app_bottom_nav/view/SettingsPageBottom.dart';
import 'package:flutter/material.dart';

class AppBottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppBottom();
  }
}

class _AppBottom extends State {
  //
  //
  //ATRIBUTOS
  // Listado de las páginas
  List pages = [HomePageBottom(), AddPageBottom(), SettingsPageBottom()];
  // Indice de la página
  int indexPage = 0;

//
//
  @override
  Widget build(BuildContext context) {
    Widget bottomNav = createBottomNav();
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation")),
      body: pages[indexPage],
      bottomNavigationBar: bottomNav,
    );
  }

  Widget createBottomNav() {
    Widget bottomNav = BottomNavigationBar(
      onTap: (newIndexPage) {
        setState(() {
          indexPage = newIndexPage;
        });
      },
      currentIndex: indexPage,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo), label: "Agregar"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: "Configuración")
      ],
    );
    return bottomNav;
  }
}

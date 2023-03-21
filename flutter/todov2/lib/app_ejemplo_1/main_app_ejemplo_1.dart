import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_1/pages/home.dart';
import 'package:todov2/app_ejemplo_1/pages/profile.dart';
import 'package:todov2/app_ejemplo_1/pages/list_users.dart';

class MainAppEjemplo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppEjemplo1();
  }
}

class _MainAppEjemplo1 extends State<MainAppEjemplo1> {
  final List<Widget> pages = [Home(), Profile(), ListUsers()];
  int currentlyIndex = 0;

  void changePage(int index) {
    setState(() {
      currentlyIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tareas"),
      ),
      body: pages[currentlyIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(),
        child: BottomNavigationBar(
          onTap: changePage,
          currentIndex: currentlyIndex,
          items: const [
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Perfil",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "Usuarios",
              icon: Icon(Icons.people),
            )
          ],
        ),
      ),
    );
  }
}

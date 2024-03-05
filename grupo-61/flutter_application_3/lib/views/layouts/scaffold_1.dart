import 'package:flutter/material.dart';

Widget createScaffold(BuildContext context) {
  String title = "App";
  return App3Scaffold(title: title);
}

class App3Scaffold extends StatelessWidget {
  const App3Scaffold({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        title: Text(title),
        // backgroundColor: Colors.blue,
        actions: const [Icon(Icons.settings)],
        elevation: 5,
        // Menu hamburguesa
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // print("object");
            // Scaffold.of(context).openDrawer();
          },
        ),
      ),
      // Body
      body: Text(title),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Lista"),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
      // backgroundColor: Colors.amber,
      drawerEnableOpenDragGesture: true,
      drawerEdgeDragWidth: 80,
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(title: Text("Elemento lista")),
        ],
      )),
    );
  }
}

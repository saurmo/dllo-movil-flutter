import 'package:flutter/material.dart';

Widget createScaffold() {
  return Scaffold(
    key: UniqueKey(),
    appBar: AppBar(
      title: Text('Mi aplicación'),
      backgroundColor: Colors.blue,
      elevation: 4.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          // Abrir el drawer
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Mostrar la búsqueda
          },
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // Mostrar la configuración
          },
        ),
      ],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hola mundo!'),
          ElevatedButton(
            onPressed: () {
              // Hacer algo
            },
            child: Text('Presioname'),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Hacer algo
      },
      child: Icon(Icons.add),
    ),
    bottomNavigationBar: BottomNavigationBar(
      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Lista',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuración',
        ),
      ],
      currentIndex: 0,
      onTap: (int index) {
        // Cambiar la página
      },
    ),
    backgroundColor: Colors.white,
    resizeToAvoidBottomInset: true,
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Menú'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Inicio'),
            onTap: () {
              // Cambiar a la página de inicio
            },
          ),
          ListTile(
            title: Text('Lista'),
            onTap: () {
              // Cambiar a la página de lista
            },
          ),
          ListTile(
            title: Text('Configuración'),
            onTap: () {
              // Cambiar a la página de configuración
            },
          ),
        ],
      ),
    ),
    endDrawer: Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Opciones adicionales'),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Ayuda'),
            onTap: () {
              // Mostrar la ayuda
            },
          ),
          ListTile(
            title: Text('Acerca de'),
            onTap: () {
              // Mostrar información sobre la aplicación
            },
          ),
        ],
      ),
    ),
    extendBodyBehindAppBar: true,
    drawerScrimColor: Colors.black54,
    onDrawerChanged: (bool open) {
      // Hacer algo cuando se abre o cierra el drawer
    },
    onEndDrawerChanged: (bool open) {
      // Hacer algo cuando se abre o cierra el endDrawer
    },
    
    drawerEdgeDragWidth: 100.0,
    drawerEnableOpenDragGesture: true,
    endDrawerEnableOpenDragGesture: true,
    extendBody: true,
    bottomSheet: BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 100.0,
          color: Colors.white,
          child: Text('BottomSheet'),
        );
      },
    ),
  );
}

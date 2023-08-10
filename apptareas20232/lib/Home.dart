import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  var contenedor1 = Container(
    alignment: Alignment.center,
    color: Colors.amber,
    width: 50,
    height: 50,
    child: const Text("Hola Mundo"),
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Aplicacion"),
        backgroundColor: Colors.blueAccent,
      ),
      body: contenedor1,
    );
  }
}

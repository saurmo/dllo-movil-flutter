import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Aplicacion"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Container(
          child: Container(
            child: Text("Hola Mundo"),
            alignment: Alignment.center,
            color: Colors.amber,
            width: 50,
            height: 50,
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

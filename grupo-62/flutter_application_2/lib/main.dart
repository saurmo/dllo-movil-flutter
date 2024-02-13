import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/JuegoController.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    JuegoController _controller = JuegoController();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_controller.obtenerPregunta()),
              ElevatedButton(
                onPressed: () {
                  _controller.generarAdivinanza();
                  _controller.obtenerPregunta();
                  print(_controller.obtenerPregunta());
                },
                child: Text("Generar pregunta"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/Juego.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    JuegoController controller = JuegoController();

    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("controller.obtenerPregunta()"),
        ),
      ),
    );
  }
}

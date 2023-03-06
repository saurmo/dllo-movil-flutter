import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Contenedor básico (Color, ancho y altos)
        Container(
          color: Colors.black,
          width: 48.0,
          height: 48.0,
        ),
        // Contenedor con margenes
        Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.black,
          width: 48.0,
          height: 48.0,
        ),
        // Contenedor con decoración
        Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(width: 1.0),
          ),
          width: 48.0,
          height: 48.0,
          child: const Text("Contenedor"),
        ),
        // Contenedor con decoración y padding
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 144, 122, 55),
            border: Border.all(width: 1.0),
          ),
          width: 48.0,
          height: 48.0,
          child: const Text("Contenedor"),
        ),
      ],
    );
  }
}

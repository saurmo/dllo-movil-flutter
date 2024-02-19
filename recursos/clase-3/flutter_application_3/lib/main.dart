import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/layouts/container_2.dart';
import 'package:flutter_application_3/views/layouts/scaffold_1.dart';
import 'package:flutter_application_3/views/widgets/buttons.dart';
import 'package:flutter_application_3/views/widgets/imagenes.dart';
import 'package:flutter_application_3/views/widgets/textos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold_1
      // home: createScaffold(),
      home: Scaffold(
        // body: crearTextos(),
        body: crearImagenes(),
        // body: createContainers(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_3/contenedores.dart';
import 'package:flutter_application_3/icons.dart';
import 'package:flutter_application_3/imagenes.dart';
import 'package:flutter_application_3/rows_columns.dart';
import 'package:flutter_application_3/textos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: createIcons()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4_5/views/widgets/FieldFormsWidget.dart';
import 'package:flutter_application_4_5/views/widgets/ImageProfileWidget.dart';
import 'package:flutter_application_4_5/views/widgets/ListWidget.dart';
import 'package:flutter_application_4_5/views/widgets/MediaQueryWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplos"),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListWidget(),
      ),
    );
  }
}

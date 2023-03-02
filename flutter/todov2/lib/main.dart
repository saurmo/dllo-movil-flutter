import 'package:flutter/material.dart';
import 'package:todov2/bases/columns.dart';
import 'package:todov2/bases/container.dart';
import 'package:todov2/bases/rows.dart';
import 'package:todov2/ejercicios/Ajedrez.dart';
import 'package:todov2/ejercicios/BodySection.dart';
import 'package:todov2/ejercicios/ImageSection.dart';
import 'package:todov2/ejercicios/TitleSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
       Scaffold(
          appBar: AppBar(
            title: const Text("To Do"),
            titleSpacing: 100,
          ),
          body: Container(
              child: Column(
            children: [
              ImageSection(
                  "https://live.staticflickr.com/4310/35920130650_c5810625b3_b.jpg"),
              Container(
                child: TitleSection(
                  subtitulo: "San Rafael",
                  titulo: "Charco Bizcocho",
                  estrellas: 5,
                ),
              ),
              BodySection(
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos,")
            ],
          ))),
    );
  }
}

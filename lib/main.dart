import 'package:flutter/material.dart';
import 'package:todo/bases/images_base.dart';
import 'package:todo/bases/layout_builder.dart';
import 'package:todo/bases/container.dart';
import 'package:todo/layout_1/description_place.dart';
import 'package:todo/layout_1/gradient_back.dart';
import 'package:todo/layout_1/layout_1.dart';
import 'package:todo/layout_1/review_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Mis Tareas"),
        // ),
        // body: ,
        body: LayoutBuilderBase(),
      ),
    );
  }
}

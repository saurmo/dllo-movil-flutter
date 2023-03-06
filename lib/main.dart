import 'package:flutter/material.dart';
import 'package:todo/layout_1/description_place.dart';
import 'package:todo/layout_1/gradient_back.dart';
import 'package:todo/layout_1/review_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Mis Tareas"),
        // ),
        // body: LayoutBuilder(
        //   builder: (builderContext, constrains) {
        //   },
        // ),
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("San Rafael", 4, descriptionDummy),
                ReviewList(),
              ],
            ),
            GradientBack("Popular")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:places_app/views/pages/PlaceList.dart';
import 'package:places_app/views/pages/PlacePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Places List"),
          backgroundColor: Colors.blueAccent,
        ),
        body: PlaceList(),
      ),
    );
  }
}

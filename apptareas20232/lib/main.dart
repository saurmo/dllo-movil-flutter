import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createScaffold(),
    );
  }
}

createScaffold() {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación 2023 2"),
      ),
      body: Text("Layout"));
}

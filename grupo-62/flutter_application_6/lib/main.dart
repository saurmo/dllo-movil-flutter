import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/CreateContactPage.dart';
import 'package:flutter_application_6/views/ListContactPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListContactPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_6/view/pages/CreateContactPage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  String title = "Contactos";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(title), backgroundColor: Colors.blueAccent,),
        body: Center(
          child: CreateContactPage(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/ButtonContador.dart';
import 'package:flutter_application_4/views/PlaceForm.dart';
import 'package:flutter_application_4/views/PlaceList.dart';
import 'package:flutter_application_4/views/PlaceWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String title = "App 4";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          elevation: 3,
        ),
        body: PlaceForm(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     // Navigator.of(context).push(
        //     //   MaterialPageRoute(builder: (_) => PlaceForm(),)
        //     // );
        //   },
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}

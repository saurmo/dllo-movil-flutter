import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/FieldsForm.dart';
import 'package:flutter_application_5/widgets/ImageProfile.dart';
import 'package:flutter_application_5/widgets/LayoutBuilder.dart';
import 'package:flutter_application_5/widgets/MediaQuery.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FieldsFormWidget(),
        ),
      ),
    );
  }
}

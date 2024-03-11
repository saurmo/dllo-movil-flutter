import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/FormFields.dart';
import 'package:flutter_application_5/views/widgets/LayoutBuilderWidget.dart';
import 'package:flutter_application_5/views/widgets/ListViewWidget.dart';
import 'package:flutter_application_5/views/widgets/MediaQueryWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListViewWidget(),
      ),
    );
  }
}

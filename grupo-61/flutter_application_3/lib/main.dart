import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/layouts/container_2.dart';
import 'package:flutter_application_3/views/layouts/rows.dart';
import 'package:flutter_application_3/views/layouts/scaffold_1.dart';
import 'package:flutter_application_3/views/widgets/icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:createScaffold(context),
    );
  }
}

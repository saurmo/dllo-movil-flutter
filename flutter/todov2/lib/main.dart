import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_1/router/AppRouter.dart';
import 'package:todov2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialaApp',
      theme: ThemeData.light().copyWith(),
      home: HomeApps(),
      routes: AppRouter.routers(),
    );
  }
}

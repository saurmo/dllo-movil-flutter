import 'package:apptareas20232/Home.dart';
import 'package:flutter/material.dart';

void main() {
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Mi Aplicación';
    Color colorApp = const Color.fromRGBO(150, 50, 30, 0.5);
    ThemeData theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: colorApp),
      useMaterial3: true,
    );
    print("Inicio de app");
    MyHomePage home = const MyHomePage();

    return MaterialApp(
      title: title,
      theme: theme,
      home: home,
    );
  }
}

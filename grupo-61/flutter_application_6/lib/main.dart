import 'package:flutter/material.dart';
import 'package:flutter_application_6/controller/ContactProvider.dart';
import 'package:flutter_application_6/view/pages/CreateContactPage.dart';
import 'package:flutter_application_6/view/pages/ListContactPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ContactProvider()),
    ],
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  String title = "Contactos";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListContactPage(),
      ),
    );
  }
}

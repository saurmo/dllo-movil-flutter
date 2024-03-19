import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/ContactProvider.dart';
import 'package:flutter_application_6/views/CreateContactPage.dart';
import 'package:flutter_application_6/views/ListContactPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        )
      ],
      child: MainApp(),
    ),
  );
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

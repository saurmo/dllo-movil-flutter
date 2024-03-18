import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/UserProvider.dart';
import 'package:flutter_application_6/views/ListUserPage.dart';
import 'package:flutter_application_6/views/NewUserPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListUserPage(),
    );
  }
}

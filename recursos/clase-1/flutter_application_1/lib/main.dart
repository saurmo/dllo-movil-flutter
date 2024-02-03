import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Nav Bar"),
        ),
        body:const  Center(
          child: Text('Hello World!'),
        ),
      ),
    );
    // return const CupertinoApp(
    //   home: CupertinoPageScaffold(
    //     navigationBar: CupertinoNavigationBar(
    //       middle: Text("Nav Bar"),
    //     ),
    //     child: Center(
    //       child: Text('Hello World!'),
    //     ),
    //   ),
    // );
  }
}

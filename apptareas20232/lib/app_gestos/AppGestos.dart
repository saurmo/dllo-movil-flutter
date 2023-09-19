import 'package:flutter/material.dart';

class AppGestos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppGestos();
  }
}

class _AppGestos extends State {
  bool switch1 = false;
  String? formato = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forms")),
      body: Text("Hola"),
    );
  }

  void onChangeSwitch(value) {
    switch1 = !switch1;
    setState(() {});
  }
}

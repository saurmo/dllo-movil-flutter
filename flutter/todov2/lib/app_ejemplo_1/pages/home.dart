import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  String clave = "";
  bool? isActive = false;
  void onChanged1(bool? value) {
    setState(() {
      isActive = value;
      clave = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isActive,
              onChanged: onChanged1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Click"),
            ),
            Text(clave)
          ]),
    );
  }
}

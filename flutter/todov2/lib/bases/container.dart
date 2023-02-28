import 'package:flutter/material.dart';

class ContainerBase extends StatelessWidget {
  Container createContainer(String text) {
    return Container(
      child: Text(text),
      color: Colors.amber,
      width: 50,
      height: 50,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
    );
  }

  Container createContainerWithDecoration(String text) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
      ),
      decoration:
          BoxDecoration(color: Colors.blue, border: Border.all(width: 5)),
      width: 150,
      height: 150,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: createContainerWithDecoration("Contenedor 1"),
    );
  }
}

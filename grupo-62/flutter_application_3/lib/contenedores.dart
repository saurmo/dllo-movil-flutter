import 'package:flutter/material.dart';

Widget crearContenedores() {
  return Container(
    width: 400,
    height: 400,
    // color: Colors.black.withOpacity(0.5),
    // child: Text("Contenedor ejemplo"),
    alignment: Alignment.center,
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.black45,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
      border: Border.all(
        width: 1,
        color: Colors.red,
      ),
    ),
    // transform: Matrix4.rotationZ(0.1),
  );
}

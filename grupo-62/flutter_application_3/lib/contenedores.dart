import 'package:flutter/material.dart';

Widget crearContenedores() {
  return Container(
    width: 400,
    height: 400,
    color: Colors.black.withOpacity(0.5),
    child: Text("Contenedor"),
    alignment: Alignment.center,
    margin: EdgeInsets.all(15),
  );
}

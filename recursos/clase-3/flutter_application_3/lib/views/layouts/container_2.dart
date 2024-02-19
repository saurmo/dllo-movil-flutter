import 'package:flutter/material.dart';

Container createContainerWithDecoration({required text, Color? color}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black45,
      border: Border.all(
        width: 1,
        color: Colors.red,
      ),
    ),
    width: 50,
    height: 50,
    child: Text(text),
  );
}

createContainer({required text, Color? color}) {
  return Container(
    color: color ?? Colors.blue,
    width: 50,
    height: 50,
    child: Text(text),
  );
}

Widget createContainers() {
  return Column(
    children: [
      createContainer(text: "1"),
      createContainer(text: "2", color: Colors.green),
      createContainerWithDecoration(text: "3"),
      Container(
        // Tamaño
        width: 200,
        height: 100,

        // Color
        // color: Colors.blue,

        // Decoración
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),

        // Alineación
        alignment: Alignment.center,

        // Relleno
        padding: EdgeInsets.all(10),

        // Margen
        margin: EdgeInsets.all(20),

        // Transformación
        transform: Matrix4.rotationZ(0.1),

    

        // Contenido
        child: Text(
          "Hola Mundo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    ],
  );
}

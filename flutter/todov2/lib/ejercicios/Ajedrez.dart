import 'package:flutter/material.dart';

class Ajedrez {
  Widget _createPosition(Color color) {
    return Container(
      child: null,
      color: color,
      height: 50,
      width: 50,
    );
  }

  dynamic createAjedrez() {
    bool esBlanco = false;
    List<Row> filas = [];
    for (var i = 0; i < 8; i++) {
      List<Widget> columnas = [];
      for (var j = 0; j < 8; j++) {
        Widget cuadro = _createPosition(esBlanco ? Colors.white : Colors.black);
        columnas.add(cuadro);
        esBlanco = !esBlanco;
      }
      esBlanco = !esBlanco;
      filas.add(Row(
        children: columnas,
      ));
      columnas = [];
    }
    return filas;
  }
}

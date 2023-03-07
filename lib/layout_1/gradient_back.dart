import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      alignment: const Alignment(-0.9, -0.6),
      decoration: const BoxDecoration(
        // Gradient (Efecto del fondo)
        gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueGrey,
            ],
            // Posición del gradiente
            // [coordinadas primer color ]
            // p1xc1,p1yc1
            begin: FractionalOffset(0.2, 0.0),
            // [Segundo color ]
            // p2xc2,p2yc2
            end: FractionalOffset(1.0, 0.6),
            // Orientación del gradiente
            stops: [0.0, 0.6],
            // Color de relleno mientras no carga el gradiente
            tileMode: TileMode.clamp),
      ),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

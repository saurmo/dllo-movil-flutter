import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  late String _titulo;
  late String _subtitulo;
  late int _estrellas;

  // TitleSection(String titulo, String subtitulo, int estrellas) {
  //   _titulo=titulo;
  //   _subtitulo=subtitulo;
  //   _estrellas=estrellas;
  // }

  TitleSection(
      {required String titulo, required String subtitulo, int estrellas = 0}) {
    _titulo = titulo;
    _subtitulo = subtitulo;
    _estrellas = estrellas;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _titulo,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
       
            Text(_subtitulo,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                )),
          ],
        ),
        Spacer(),
        Row(
          children: [
            const Icon(
              Icons.star_border_outlined,
              color: Colors.redAccent,
            ),
            Text(_estrellas.toString()),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

List<Widget> crearTextos() {
  return const [
    // Mostrar un mensaje simple
    Text('Hola mundo'),
    SizedBox(height: 20),
// Mostrar un texto en dos líneas
    Text(
        'Este es un texto largo que se extiende a varias líneas. Este es un texto largo que se extiende a varias líneas',
        maxLines: 2),

// Mostrar un texto que se trunca con puntos suspensivos
    Text('Este es un texto muy largo que se trunca...',
        overflow: TextOverflow.ellipsis),

// Ajustar el tamaño del texto al tamaño de la pantalla
    Text('Este texto se ajusta al tamaño de la pantalla', textScaleFactor: 1.2),

// Alinear el texto a la derecha
    Text('Este texto está alineado a la derecha', textAlign: TextAlign.right),

// Mostrar un texto con una fuente grande y azul
    Text('Hola mundo', style: TextStyle(fontSize: 20, color: Colors.blue)),

// Usar una fuente específica
    Text('Hola mundo', style: TextStyle(fontFamily: 'Roboto')),

// Cambiar el grosor del texto
    Text('Hola mundo', style: TextStyle(fontWeight: FontWeight.bold)),

// Mostrar el texto en cursiva
    Text('Hola mundo', style: TextStyle(fontStyle: FontStyle.italic)),

// Aumentar el espacio entre las letras
    Text('Hola mundo', style: TextStyle(letterSpacing: 2.0)),

// Aumentar el espacio entre las palabras
    Text('Hola mundo', style: TextStyle(wordSpacing: 4.0)),

// Aumentar la altura de la línea de texto
    Text('Hola mundo', style: TextStyle(height: 1.5)),

// Subrayar el texto
    Text('Hola mundo', style: TextStyle(decoration: TextDecoration.underline)),
  ];
}

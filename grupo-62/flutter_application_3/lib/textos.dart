import 'package:flutter/material.dart';

crearTextos() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Texto 1"),
      // Mostrar un mensaje simple
      Text('Hola mundo'),

// Mostrar un texto en dos líneas
      Text(
          'Este es un texto largo que se extiende a varias líneas. Este es un texto largo que se extiende a varias líneas,',
          maxLines: 2),

// Mostrar un texto que se trunca con puntos suspensivos
      Text(
          'Este es un texto muy largo que se truncaasdasdasdasdsdaasdasdasdsadasdasdasdsadsadsadasdsa...',
          overflow: TextOverflow.ellipsis),

// Alinear el texto a la derecha
      Text('Este texto está alineado a la derecha', textAlign: TextAlign.left),

// Mostrar un texto con una fuente grande y azul
      Text(
        'Hola mundo',
        style: TextStyle(
          fontSize: 25,
          color: Colors.green,
          fontWeight: FontWeight.w900,
        ),
      ),

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
      Text('Hola mundo',
          style: TextStyle(decoration: TextDecoration.underline)),
    ],
  );
}

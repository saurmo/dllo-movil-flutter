import 'package:flutter/material.dart';
import 'user.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _datosFormulario = User();
  final _formularioKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formularioKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa tu nombre',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor ingresa tu nombre';
              }
              return null;
            },
            onSaved: (value) {
              _datosFormulario.nombre = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa tu edad',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor ingresa tu edad';
              }
              if (int.tryParse(value) == null) {
                return 'Por favor ingresa un número válido';
              }
              return null;
            },
            onSaved: (value) {
              _datosFormulario.edad = int.parse(value!);
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa tu correo electrónico',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor ingresa tu correo electrónico';
              }
              if (!value.contains('@')) {
                return 'Por favor ingresa un correo electrónico válido';
              }
              return null;
            },
            onSaved: (value) {
              _datosFormulario.email = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formularioKey.currentState!.validate()) {
                  _formularioKey.currentState!.save();
                  // Aquí puedes enviar los datos a un servidor o hacer algo con ellos.
                }
              },
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonContador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ButtonContador();
}

class _ButtonContador extends State {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Contador: $contador'),
      ElevatedButton(
        onPressed: () {
          setState(() {
            contador++;
          });
          print(contador);
        },
        child: const Text("Incrementar"),
      )
    ]);
  }
}

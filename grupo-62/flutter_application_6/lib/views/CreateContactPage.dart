import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateContactPage extends StatelessWidget {
  // Atributos
  String title = "Crear contacto";
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: formContact(context),
    );
  }

  Form formContact(BuildContext context) {
    return Form(
      key: _key,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nombre",
                hintText: "Ingrese el nombre",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Celular",
                hintText: "Ingrese el celular",
              ),
            ),
            ElevatedButton(
              child: const Text("Guardar"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

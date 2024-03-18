import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/controller/CreateContactController.dart';

class CreateContactPage extends StatefulWidget {
  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              validator: validatorName,
              decoration: const InputDecoration(
                  labelText: "Nombre", hintText: "Ingrese un nombre"),
            ),
            TextFormField(
              validator: validatorPhone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  labelText: "Celular",
                  hintText: "Ingrese un número de celular"),
            ),
            TextButton(
              onPressed: () => saveContact(_key),
              child: const Text("Guardar contacto"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/controllers/ContactController.dart';
import 'package:flutter_application_6/controllers/ContactProvider.dart';
import 'package:flutter_application_6/models/Contact.dart';
import 'package:provider/provider.dart';

class CreateContactPage extends StatelessWidget {
  // Atributos
  String title = "Crear contacto";
  final GlobalKey<FormState> _key = GlobalKey();

  Contact contact = Contact.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Consumer<ContactProvider>(
        builder: (_, contactProvider, child) {
          return formContact(contactProvider);
        },
      ),
    );
  }

  Form formContact(ContactProvider provider) {
    return Form(
      key: _key,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) => contact.name = value,
              validator: validateField,
              decoration: const InputDecoration(
                labelText: "Nombre",
                hintText: "Ingrese el nombre",
              ),
            ),
            TextFormField(
              onChanged: (value) => contact.phone = value,
              validator: validateField,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Celular",
                hintText: "Ingrese el celular",
              ),
            ),
            ElevatedButton(
              onPressed: () => saveContact(_key, contact, provider),
              child: const Text("Guardar"),
            )
          ],
        ),
      ),
    );
  }
}

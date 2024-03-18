import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/controller/ContactProvider.dart';
import 'package:flutter_application_6/controller/CreateContactController.dart';
import 'package:flutter_application_6/view/widgets/AppBarContact.dart';
import 'package:provider/provider.dart';

class CreateContactPage extends StatefulWidget {
  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  GlobalKey<FormState> _key = GlobalKey();

  String? name = "";
  String? phone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarContact("Nuevo contacto"),
      body: Consumer<ContactProvider>(
          builder: (context, contactProvider, child) =>
              contactForm(contactProvider)),
    );
  }

  Form contactForm(ContactProvider contactProvider) {
    return Form(
      key: _key,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (newValue) => name = newValue,
              validator: validatorName,
              decoration: const InputDecoration(
                  labelText: "Nombre", hintText: "Ingrese un nombre"),
            ),
            TextFormField(
              onChanged: (newValue) => phone = newValue,
              validator: validatorPhone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  labelText: "Celular",
                  hintText: "Ingrese un número de celular"),
            ),
            TextButton(
              onPressed: () => saveContact(_key,
                  name: name, phone: phone, provider: contactProvider),
              child: const Text("Guardar contacto"),
            )
          ],
        ),
      ),
    );
  }
}

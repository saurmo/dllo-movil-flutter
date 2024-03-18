import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/UserProvider.dart';
import 'package:provider/provider.dart';

class NewUserPage extends StatefulWidget {
  NewUserPage({super.key});

  @override
  NewUserPageState createState() {
    return NewUserPageState();
  }
}

class NewUserPageState extends State<NewUserPage> {
  final _formKey = GlobalKey<FormState>();

  String? name = "";
  String? lastname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Nuevo usuario"),
        ),
        body: Consumer<UserProvider>(
          builder: (context, userProvider, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: userFormWidget(userProvider),
            );
          },
        ));
  }

  Form userFormWidget(UserProvider userProvider) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onSaved: (newValue) => name = newValue,
            decoration: const InputDecoration(labelText: "Nombre"),
            validator: _nameValidator,
          ),
          TextFormField(
            onSaved: (newValue) => lastname = newValue,
            decoration: const InputDecoration(labelText: "Apellido"),
            validator: _lastnameValidator,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form ok
                  _formKey.currentState?.save();
                  print(name);
                  print(lastname);
                  userProvider.addUser({'name': name, 'lastname': lastname});
                }
              },
              child: const Text('Guardar'),
            ),
          ),
        ],
      ),
    );
  }

  String? _nameValidator(value) {
    return value == null || value.isEmpty ? 'Please enter some text' : null;
  }

  String? _lastnameValidator(value) {
    return value == null || value.isEmpty ? 'Please enter some text' : null;
  }
}

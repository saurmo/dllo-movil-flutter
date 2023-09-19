import 'package:apptareas20232/app_form_v2/controllers/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class FormUser extends StatefulWidget {
  FormUser({
    super.key,
  });

  @override
  State<FormUser> createState() => _FormUserState();
}

class _FormUserState extends State<FormUser> {
  @override
  Widget build(BuildContext context) {
    UserProvider _userProvider = Provider.of<UserProvider>(context);
    return Form(
      key: _userProvider.keyFormUser,
      child: ListView(
        children: [
          const Center(
            child: Text(
              "Usuarios",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          Text(
            "${_userProvider.name}  ${_userProvider.user.lastname}",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.name = value;
              setState(() {});
            },
            validator: (value) {
              RegExp exp = RegExp(r'^[a-zA-Z0-9]+$');
              if (value == null) {
                return "Campo obligatorio";
              }
              if (!exp.hasMatch(value)) {
                return "No puede tener caracteres especiales.";
              }
            },
            decoration: const InputDecoration(
                hintText: "Ingrese su nombre", labelText: "Nombre"),
          ),
          TextFormField(
            onChanged: (value) {
              _userProvider.user.lastname = value;
              setState(() {});
            },
            decoration: const InputDecoration(
                hintText: "Ingrese su apellido", labelText: "Apellido"),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su correo", labelText: "Correo"),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su edad", labelText: "Edad"),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su contraseña", labelText: "Contraseña"),
            obscureText: true,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su fecha de nacimiento", labelText: "Fecha"),
            keyboardType: TextInputType.datetime,
          ),
          ElevatedButton.icon(
            onPressed: () {
              _userProvider.createUser();
            },
            icon: const Icon(Icons.save),
            label: const Text("Crear usuario"),
          ),
          IconButton(
              onPressed: () {
                Clipboard.setData(
                    ClipboardData(text: _userProvider.user.lastname));
                print("Copiaste el apellido");
              },
              icon: const Icon(Icons.copy))
        ],
      ),
    );
  }
}

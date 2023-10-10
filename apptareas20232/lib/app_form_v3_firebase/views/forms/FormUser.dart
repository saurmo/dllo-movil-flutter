import 'package:apptareas20232/app_form_v3_firebase/controllers/UserProvider.dart';
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
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Text(
            "${_userProvider.user.name}  ${_userProvider.user.lastname}",
            style: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.id = value;
              setState(() {});
            },
            validator: (value) {
              if (value == null) {
                return "Campo obligatorio";
              }
            },
            decoration: const InputDecoration(
              hintText: "Ingrese su identificación",
              labelText: "Identificación",
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.name = value;
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
              hintText: "Ingrese su nombre",
              labelText: "Nombre",
            ),
          ),
          TextFormField(
            onChanged: (value) {
              _userProvider.user.lastname = value;
              setState(() {});
            },
            decoration: const InputDecoration(
              hintText: "Ingrese su apellido",
              labelText: "Apellido",
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.email = value;
              setState(() {});
            },
            decoration: const InputDecoration(
              hintText: "Ingrese su correo",
              labelText: "Correo",
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.age = int.parse(value);
              setState(() {});
            },
            decoration: const InputDecoration(
              hintText: "Ingrese su edad",
              labelText: "Edad",
            ),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Ingrese su contraseña",
              labelText: "Contraseña",
            ),
            obscureText: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.password = value;
              setState(() {});
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Ingrese su fecha de nacimiento",
              labelText: "Fecha",
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              _userProvider.user.birthDate = value;
              setState(() {});
            },
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

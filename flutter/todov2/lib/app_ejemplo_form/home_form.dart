import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todov2/app_ejemplo_form/custom_dropdown.dart';
import 'package:todov2/app_ejemplo_form/custom_input.dart';
import 'package:todov2/app_ejemplo_form/providers/register_provider.dart';

class HomeForm extends StatefulWidget {
  @override
  State<HomeForm> createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registro"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ChangeNotifierProvider(
              create: (_) {
                return RegisterProvider();
              },
              child: _RegisterForm()),
        )
        // ,
        );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm({
    super.key,
  });

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    RegisterProvider userForm = Provider.of<RegisterProvider>(context);

    return Form(
      key: userForm.formKey,
      child: ListView(
        children: [
          const Text("Formulario"),
          // Nombre
          CustomInput(
            userInfo: userForm.userInfo,
            property: "name",
            labelText: "Nombre",
            hintText: "Ingrese su nombre",
            // autofocus: true,
          ),
          // Correo
          CustomInput(
            userInfo: userForm.userInfo,
            property: "email",
            labelText: "Email",
            type: TextInputType.emailAddress,
          ),
          CustomInput(
            userInfo: userForm.userInfo,
            property: "phone",
            labelText: "Celular",
            type: TextInputType.phone,
          ),
          CustomInput(
            labelText: "Contraseña",
            obscureText: true,
            userInfo: userForm.userInfo,
            property: "password",
          ),
          CustomDropdown(
            labelText: "Rol",
            userInfo: userForm.userInfo,
            property: "rol",
          ),
          SwitchListTile(
            title: const Text("Se encuentra estudiando?"),
            value: userForm.userInfo["is_student"],
            onChanged: (value) {
              userForm.userInfo["is_student"] = value;
              setState(() {});
            },
          ),
          Slider(
              min: 0,
              max: 10,
              divisions: 10,
              value: userForm.userInfo["semester"],
              onChanged: userForm.userInfo["is_student"]
                  ? (value) {
                      userForm.userInfo["semester"] = value;
                      setState(() {});
                    }
                  : null),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
               userForm.isValidForm();
               userForm.createUser();
              },
              child: Text("Guardar"),
            ),
          ),
        ],
      ),
    );
  }
}

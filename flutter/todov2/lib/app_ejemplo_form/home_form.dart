import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_form/custom_dropdown.dart';
import 'package:todov2/app_ejemplo_form/custom_input.dart';

class HomeForm extends StatefulWidget {
  @override
  State<HomeForm> createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  Map<String, dynamic> userInfo = {
    "name": "",
    "email": "",
    "phone": "",
    "password": "",
    "rol": "",
    "semester": 0.0,
    "is_student": false,
  };

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Text("Formulario"),
              // Nombre
              CustomInput(
                userInfo: userInfo,
                property: "name",
                labelText: "Nombre",
                hintText: "Ingrese su nombre",
                // autofocus: true,
              ),
              // Correo
              CustomInput(
                userInfo: userInfo,
                property: "email",
                labelText: "Email",
                type: TextInputType.emailAddress,
              ),
              CustomInput(
                userInfo: userInfo,
                property: "phone",
                labelText: "Celular",
                type: TextInputType.phone,
              ),
              CustomInput(
                labelText: "Contraseña",
                obscureText: true,
                userInfo: userInfo,
                property: "password",
              ),
              CustomDropdown(
                labelText: "Rol",
                userInfo: userInfo,
                property: "rol",
              ),
              SwitchListTile(
                title: const Text("Es estudiante?"),
                value: userInfo['is_student'],
                onChanged: (value) {
                  userInfo['is_student'] = value;

                  setState(() {});
                },
              ),
              Slider(
                value: userInfo['semester'],
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: userInfo['is_student'] == false
                    ? null
                    : (value) {
                        print(value);
                        userInfo['semester'] = value;
                        setState(() {});
                      },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    FormState? state = formKey.currentState;
                    if (state != null && state.validate()) {
                      print("OK");
                      print(userInfo);
                    } else {
                      print("Form invalido");
                    }
                  },
                  child: Text("Guardar"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_form/custom_dropdown.dart';
import 'package:todov2/app_ejemplo_form/custom_input.dart';

class HomeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userInfo = {
      "name": "",
      "email": "",
      "phone": "",
      "password": "",
      "rol": "",
    };
    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
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
                autofocus: true,
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

import 'package:flutter/material.dart';

class FieldFormsWidget extends StatefulWidget {
  @override
  State<FieldFormsWidget> createState() => _FieldFormsWidgetState();
}

class _FieldFormsWidgetState extends State<FieldFormsWidget> {
  Map<String, dynamic> values = {
    'allow': false,
    'valid': false,
    'accepted': '',
    'name': '',
    'lastname': ''
  };

  TextEditingController _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckboxListTile(
          title: const Text("Allow"),
          value: values["allow"],
          onChanged: (newValue) {
            values["allow"] = newValue;
            setState(() {});
          },
        ),
        SwitchListTile(
          title: const Text("Valid"),
          value: values["valid"],
          onChanged: (newValue) {
            values["valid"] = newValue;
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text("Accepted Yes"),
          value: 'YES',
          groupValue: values["accepted"],
          onChanged: (newValue) {
            values["accepted"] = newValue;
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text("Accepted No"),
          value: 'NO',
          groupValue: values["accepted"],
          onChanged: (newValue) {
            values["accepted"] = newValue;
            setState(() {});
          },
        ),
        Text(
            "Nombre ${values["name"]} Apellido ${_lastnameController.text} :  Acepto: ${values["accepted"]}"),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                autofocus: false,
                maxLength: 20,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Nombre",
                  hintText: "Ingrese nombre",
                ),
                onChanged: (newName) {
                  values['name'] = newName;
                  setState(() {});
                },
              ),
              TextFormField(
                maxLength: 20,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: "Apellido",
                  hintText: "Ingrese apellido",
                  errorText: _lastnameValidator(_lastnameController.text),
                ),
                controller: _lastnameController,
                validator: _lastnameValidator,
              )
            ],
          ),
        )
      ],
    );
  }

  String? _lastnameValidator(String? newValue) {
    if (newValue == null || newValue.isEmpty) {
      return 'El apellido no puede estar vacío.';
    }

    return null;
  }
}

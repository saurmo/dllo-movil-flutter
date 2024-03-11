import 'package:flutter/material.dart';

class FormFieldsWidget extends StatefulWidget {
  FormFieldsWidget({
    super.key,
  });

  @override
  State<FormFieldsWidget> createState() => _FormFieldsWidgetState();
}

class _FormFieldsWidgetState extends State<FormFieldsWidget> {
  Map<String, dynamic> values = {
    'allow': false,
    'option_yes_no': '',
    'active': false,
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
        RadioListTile(
          title: const Text("Yes"),
          value: 'yes',
          groupValue: values["option_yes_no"],
          onChanged: (newValue) {
            values["option_yes_no"] = newValue;
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text("No"),
          value: 'no',
          groupValue: values["option_yes_no"],
          onChanged: (newValue) {
            values["option_yes_no"] = newValue;
            setState(() {});
          },
        ),
        SwitchListTile(
          title: const Text("Active"),
          value: values["active"],
          onChanged: (newValue) {
            values["active"] = newValue;
            setState(() {});
          },
        ),
        TextField(
          onChanged: (value) {
            values["name"] = value;
            setState(() {});
          },
          maxLength: 30,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
              label: Text("Nombre"), hintText: "Ingrese su nombre"),
        ),
        Text("Nombre ${values['name']}"),
        TextFormField(
          controller: _lastnameController,
          onChanged: (value) {
            values["lastname"] = value;
            setState(() {});
          },
          validator: _lastnameValidator,
          maxLength: 30,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              errorText: _lastnameValidator(_lastnameController.text),
              label: const Text("Apellido"),
              hintText: "Ingrese su apellido"),
        ),
        Text("Apellido ${_lastnameController.text}")
      ],
    );
  }

  String? _lastnameValidator(value) {
    if (value == null) {
      return "Campo obligatorio";
    }
    if (value.isEmpty) {
      return "Campo obligatorio";
    }
  }
}

import 'package:flutter/material.dart';

class FieldsFormWidget extends StatefulWidget {
  @override
  State<FieldsFormWidget> createState() => _FieldsFormWidgetState();
}

class _FieldsFormWidgetState extends State<FieldsFormWidget> {
  Map<String, dynamic> fields = {
    'confirm': false,
    'confirm2': false,
    'yes_no': '',
    'name': ''
  };
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String _nameValidator(String? value) {
      if (value == null) {
        return "";
      }
      if (value.isEmpty) {
        return 'El nombre no puede estar vacío.';
      }
      return "";
    }

    return Center(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CheckboxListTile(
            //   title: const Text("Confirm"),
            //   value: fields['confirm'],
            //   onChanged: (v) {
            //     fields['confirm'] = v;
            //     setState(() {});
            //   },
            // ),
            // SwitchListTile(
            //   title: const Text("Confirm 2"),
            //   value: fields['confirm2'],
            //   onChanged: (v) {
            //     fields['confirm2'] = v;
            //     setState(() {});
            //   },
            // ),
            // RadioListTile(
            //   title: const Text("SI"),
            //   value: 'yes_no',
            //   groupValue: fields['yes_no'],
            //   onChanged: (v) {
            //     fields['yes_no'] = v;
            //     setState(() {});
            //   },
            // ),
            // RadioListTile(
            //   title: const Text("NO"),
            //   value: 'no',
            //   groupValue: fields['yes_no'],
            //   onChanged: (v) {
            //     fields['yes_no'] = v;
            //     setState(() {});
            //   },
            // ),
            TextField(
              onChanged: (v) {
                fields['name'] = v;
                setState(() {});
              },
              maxLength: 30,
              decoration: const InputDecoration(
                hintText: "Ingrese su nombre",
                labelText: "Nombre",
                prefixIcon: Icon(Icons.people),
              ),
            ),
            TextFormField(
              onChanged: (v) {
                fields['name'] = v;
                _nameController.text = v;
                setState(() {});
              },
              validator: _nameValidator,
              controller: _nameController,
              maxLength: 30,
              decoration: InputDecoration(
                hintText: "Ingrese su nombre",
                labelText: "Nombre",
                prefixIcon: Icon(Icons.people),
                errorText: _nameValidator(_nameController.text.toString()),
              ),
            ),
            Text(fields['name'])
          ],
        ),
      ),
    );
  }
}

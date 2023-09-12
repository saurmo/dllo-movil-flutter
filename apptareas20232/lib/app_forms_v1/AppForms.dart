import 'package:flutter/material.dart';

class AppForms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppForms();
  }
}

class _AppForms extends State {
  bool switch1 = false;
  String? formato = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forms")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          const TextField(
            autofocus: false,
            textCapitalization: TextCapitalization.none,
            decoration: InputDecoration(
              hintText: "Ingrese su nombre",
              labelText: "Nombre",
              prefixIcon: Icon(Icons.people),
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value == "") {
                return "Campo obligatorio";
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Semestres en la U",
              counterText: "20",
              suffixIcon: Icon(Icons.timelapse),
            ),
            initialValue: "1",
            keyboardType: TextInputType.number,
          ),
          Switch(
            value: switch1,
            onChanged: onChangeSwitch,
          ),
          SwitchListTile(
            value: switch1,
            onChanged: onChangeSwitch,
            title: const Text("Title"),
            subtitle: const Text("Subtitle"),
          ),
          Checkbox(value: switch1, onChanged: onChangeSwitch),
          CheckboxListTile(
            value: switch1,
            onChanged: onChangeSwitch,
            title: const Text("Title"),
            subtitle: const Text("Subtitle"),
          ),
          Radio(
            value: "1",
            groupValue: "radios",
            onChanged: (value) => print(value),
          ),
          RadioListTile(
            value: "1",
            groupValue: "radios",
            onChanged: (value) => print(value),
            title: const Text("Title"),
            subtitle: const Text("Subtitle"),
          ),
          ExpansionTile(
            title: Text("Seleccion formato:"),
            subtitle: Text("Formatos de imagen"),
            children: [
              RadioListTile(
                value: "PDF",
                groupValue: formato,
                onChanged: (value) {
                  formato = value;
                  setState(() {});
                },
                title: const Text("PDF"),
                subtitle: const Text("PDF"),
              ),
              RadioListTile(
                value: "JPG",
                groupValue: formato,
                onChanged: (value) {
                  formato = value;
                  setState(() {});
                },
                title: const Text("JPG"),
                subtitle: const Text("JPG"),
              )
            ],
          )
        ]),
      ),
    );
  }

  void onChangeSwitch(value) {
    switch1 = !switch1;
    setState(() {});
  }
}

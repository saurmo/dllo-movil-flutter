// Checkbox:
// Label: Habilitar el lugar:

// Text: Tipo de lugar

// RadioButton
// Label: Urbano

// RadioButton
// Label: Rural
import 'package:flutter/material.dart';

class PlaceForm extends StatefulWidget {
  @override
  State<PlaceForm> createState() => _PlaceFormState();
}

class _PlaceFormState extends State<PlaceForm> {
  bool? enable = false;

  String? type = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              value: enable,
              onChanged: (value) {
                enable = value;
                setState(() {});
              },
              title: const Text("Habilitar lugar."),
            ),
            const Text(
              "Tipo de lugar",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            RadioListTile(
              value: "Urbano",
              groupValue: type,
              onChanged: (value) {
                type = value;
                setState(() {});
              },
              title: const Text("Urbano"),
            ),
            RadioListTile(
              value: "Rural",
              groupValue: type,
              onChanged: (value) {
                type = value;
                setState(() {});
              },
              title: const Text("Rural"),
            )
          ],
        ),
      ),
    );
  }
}

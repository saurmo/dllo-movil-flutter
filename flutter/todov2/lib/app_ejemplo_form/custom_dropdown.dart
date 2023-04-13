import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? labelText;
  Map<String, dynamic> userInfo;
  final String property;

  CustomDropdown({
    Key? key,
    required this.labelText,
    required this.userInfo,
    required this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(labelText: labelText),
      value: null,
      validator: (value) {
        if (value==null) {
          return "Debe de seleccionar un rol";
        }
      },
      items: const [
        DropdownMenuItem(
          child: Text("Seleccion un rol"),
          value: null,
        ),
        DropdownMenuItem(
          child: Text("Cliente"),
          value: "cliente",
        ),
        DropdownMenuItem(
          child: Text("Proveedor"),
          value: "proveedor",
        ),
      ],
      onChanged: (value) {
        userInfo[property]=value;
      },
    );
  }
}

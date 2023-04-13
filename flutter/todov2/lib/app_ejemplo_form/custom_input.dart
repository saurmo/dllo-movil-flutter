import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextInputType? type;
  final bool autofocus;
  final bool obscureText;
  Map<String, dynamic> userInfo;
  final String property;


  CustomInput({
    Key? key,
    required this.labelText,
    required this.userInfo,
    required this.property,
    this.hintText,
    this.type,
    this.autofocus=false,
    this.obscureText=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      initialValue: "",
      autofocus: autofocus,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
      keyboardType: type,
      validator: (value) {
        if (value == null || value == "") {
          return "El campo es obligatorio";
        }
         if (value.length<4) {
          return "La longitud de caracteres debe ser minimo 4d";
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText:obscureText ,
      onChanged: (value) {
        userInfo[property]=value;
      },
    );
  }
}

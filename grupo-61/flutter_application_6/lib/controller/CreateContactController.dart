

import 'package:flutter/material.dart';

String? validatorName(String? name){
  if (name == null || name!.isEmpty) {
    return "El nombre es obligatorio";
  }
  return null;
}

String? validatorPhone(String? phone){
  if (phone == null || phone!.isEmpty) {
    return "El celular es obligatorio";
  }
  return null;
}

 saveContact(GlobalKey<FormState> _key) {
    // Lógica
    if (_key.currentState!.validate()) {
      print("OK");
    }
  }
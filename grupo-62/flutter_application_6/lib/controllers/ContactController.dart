import 'package:flutter/material.dart';

void saveContact(GlobalKey<FormState> _key) {
  if (_key.currentState!.validate()) {
    print("OK");
  }
}

String? validateField(value) {
  return value == null || value!.isEmpty ? "Este campo es obligatorio" : null;
}

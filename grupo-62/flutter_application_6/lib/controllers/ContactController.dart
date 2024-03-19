import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/ContactProvider.dart';
import 'package:flutter_application_6/models/Contact.dart';

void saveContact(
    GlobalKey<FormState> _key, Contact contact, ContactProvider provider) {
  // Valido el formulario
  if (_key.currentState!.validate()) {
    // Agregar a la lista del provider
    provider.addContact(contact);
  }
}

String? validateField(value) {
  return value == null || value!.isEmpty ? "Este campo es obligatorio" : null;
}

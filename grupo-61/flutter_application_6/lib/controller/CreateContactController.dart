import 'package:flutter/material.dart';
import 'package:flutter_application_6/controller/ContactProvider.dart';
import 'package:flutter_application_6/model/Contact.dart';

String? validatorName(String? name) {
  if (name == null || name!.isEmpty) {
    return "El nombre es obligatorio";
  }
  return null;
}

String? validatorPhone(String? phone) {
  if (phone == null || phone!.isEmpty) {
    return "El celular es obligatorio";
  }
  return null;
}

saveContact(GlobalKey<FormState> _key,
    {required String? name, required String? phone, required ContactProvider provider}) {
  // Lógica
  if (_key.currentState!.validate()) {
    _key.currentState!.save();
    if (name != null && phone != null) {
      print(name);
      Contact contact = Contact(name: name, phone: phone);
      provider.addContact(contact);
    }
  }
}

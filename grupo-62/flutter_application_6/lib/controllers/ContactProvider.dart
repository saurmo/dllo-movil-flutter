import 'package:flutter/foundation.dart';
import 'package:flutter_application_6/models/Contact.dart';

class ContactProvider extends ChangeNotifier {
  // Lista privada
  List<Contact> _contacts = [];

// Lista pública
  List<Contact> get contacts => _contacts;

  addContact(Contact contact) {
    _contacts.add(contact);
    // Notificar a los suscriptores de que hay un cambio
    notifyListeners();
  }
}

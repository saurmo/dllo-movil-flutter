import 'package:flutter/foundation.dart';
import 'package:flutter_application_6/model/Contact.dart';

class ContactProvider extends ChangeNotifier {
  List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/controller/ContactProvider.dart';
import 'package:flutter_application_6/model/Contact.dart';
import 'package:flutter_application_6/view/pages/CreateContactPage.dart';
import 'package:flutter_application_6/view/widgets/AppBarContact.dart';
import 'package:provider/provider.dart';

class ListContactPage extends StatelessWidget {
  String title = "Listado de contactos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarContact("Lista de contactos"),
      body: Consumer<ContactProvider>(
        builder: (context, contactProvider, child) {
          return listContacts(contactProvider);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => loadCreateContactPage(context),
      ),
    );
  }

  ListView listContacts(ContactProvider contactProvider) {
    List<Contact> contacts = contactProvider.contacts;
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        Contact contact = contacts[index];
        return ListTile(
          title: Text(contact.name),
          subtitle: Text(contact.phone),
        );
      },
    );
  }

  loadCreateContactPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CreateContactPage(),
      ),
    );
  }
}

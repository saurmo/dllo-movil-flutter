import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/ContactProvider.dart';
import 'package:flutter_application_6/models/Contact.dart';
import 'package:flutter_application_6/views/CreateContactPage.dart';
import 'package:provider/provider.dart';

class ListContactPage extends StatelessWidget {
  String title = "Lista de contactos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Consumer<ContactProvider>(
        builder: (_, contactProvider, child) {
          return getListView(contactProvider);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar a la pagina de crear contacto
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CreateContactPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
    // Text("CREAR UNA LISTA DENTRO DE UN SCAFFOLD");
  }

  Widget getListView(ContactProvider provider) {
    // Lista de contactos
    List<Contact> contacts = provider.contacts;
    return Padding(
      padding: const EdgeInsets.all(10),
      // Lista de los widgets de los contactos
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (_, index) {
          Contact contact = contacts[index];
          // Retornar el widget de cada contacto
          return contactWidget(contact);
        },
      ),
    );
  }

  Widget contactWidget(Contact contact) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                contact.phone,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}

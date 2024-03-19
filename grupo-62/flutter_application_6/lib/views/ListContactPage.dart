import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/Contact.dart';
import 'package:flutter_application_6/views/CreateContactPage.dart';

class ListContactPage extends StatelessWidget {
  String title = "Lista de contactos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: getListView(),
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

  Widget getListView() {
    // Lista de contactos
    List<Contact> contacts = [Contact(name: "Juan", phone: "3216549877")];
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
    return Row(
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
      ],
    );
  }
}

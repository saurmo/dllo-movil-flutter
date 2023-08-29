import 'package:flutter/material.dart';

class AgendaMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AgendaMain();
  }
}

class _AgendaMain extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agenda")),
      body: Padding(
        child: createList(),
        padding: EdgeInsets.all(8),
      ),
    );
  }

  createList() {
    // itemBuilder: Parte gráfica de cada item
    // itemCount: Cantidad de items de mi lista
    // separatorBuilder: Separador de cada item
    List contacts = [
      "Emanuelle Luengas Restrepo",
      "Julian Herrera Leal",
      "Diego Alvarez Atamiranda",
      "Maria Camila Sierra Ospina",
      "Cristian"
    ];
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 150,
          child: Column(
            children: [
              ListTile(
                title: Text(contacts[index]),
                dense: false,
              ),
              const Divider()
            ],
          ),
        );
      },
      itemCount: contacts.length,
    );
  }
  //   return ListView.separated(
  //       itemBuilder: (context, index) {
  //         return Text(contacts[index]);
  //       },
  //       separatorBuilder: (ctx, index) => const Divider(
  //             color: Colors.black,
  //             height: 20,
  //           ),
  //       itemCount: contacts.length);
  // }
}

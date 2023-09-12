import 'package:apptareas20232/listas_v2/controllers/Frases.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ListaV2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListaV2();
  }
}

class _ListaV2 extends State {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    Future promise = Test.consultarFrases();
    return Scaffold(
      appBar: AppBar(title: const Text("Musica")),
      body: FutureBuilder<dynamic>(
        future: promise,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return fillList(snapshot.data);
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text("Ha ocurrido un error");
          } else {
            return CircularProgressIndicator();
          }

          // return Text("Ha ocurrido un error");
        },
      ),
    );
  }

  Widget fillList(List cats) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return fillItem(context, cats);
        },
        itemCount: cats.length,
      ),
    );
  }

  fillItem(BuildContext context, dynamic cat) {
    return Card(
      color: Colors.limeAccent,
      margin: EdgeInsets.all(8),
      elevation: 5,
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            ListTile(title: Text(cat["id"])),
            const Row(
              children: [
                // IconButton(onPressed: null, icon: Icon(Icons.add)),
                TextButton(onPressed: null, child: Text("Abrir")),
                // ElevatedButton(onPressed: null, child: Text("Cerrar")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

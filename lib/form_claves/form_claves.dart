import 'package:flutter/material.dart';

class FormClave extends StatefulWidget {
  @override
  _FormClaveState createState() => _FormClaveState();
}

class _FormClaveState extends State<FormClave> {
  String clave = "";
  bool conMayusculas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Text('Mayusculas'),
                Checkbox(
                    value: conMayusculas,
                    onChanged: (bool? value) {
                      setState(() {
                        conMayusculas = value!;
                      });
                    }),
                Text(conMayusculas.toString()),
              ],
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
              ),
              onPressed: () {
                setState(() {
                  clave = "Hola" + conMayusculas.toString();
                });
              },
              child: Text("cREAR"),
            ),
            Text(clave),
          ],
        ),
      ),
    );
  }
}

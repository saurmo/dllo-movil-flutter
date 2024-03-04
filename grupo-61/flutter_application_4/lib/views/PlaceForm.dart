import 'dart:ffi';

import 'package:flutter/material.dart';

class PlaceForm extends StatefulWidget {
  @override
  State<PlaceForm> createState() => _PlaceFormState();
}

class _PlaceFormState extends State<PlaceForm> {
  bool responseYN = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Respuesta Y/N: $responseYN",
            ),
            Radio(
              value: responseYN,
              groupValue: "YN",
              onChanged: (value) {
                print(value);
                responseYN = true;
                setState(() {});
              },
            ),
            Radio(
                value: responseYN,
                groupValue: "YN",
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  print(value);
                  responseYN = false;
                  setState(() {});
                }),
            Checkbox(
                value: responseYN,
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  print(value);
                  responseYN = false;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("Radio Title"),
                value: responseYN,
                groupValue: "YN",
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  print(value);
                  responseYN = false;
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text("Checkbox Title"),
                value: responseYN,
                activeColor: Colors.amberAccent,
                onChanged: (value) {
                  print(value);
                  responseYN = true;
                  setState(() {});
                }),
                TextButton(onPressed: (){}, child: Text("Button")),
                ElevatedButton(onPressed: (){}, child: Text("Button")),
                IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {

bool isActive=false;
void onChanged1(bool? value){}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Checkbox(value: false, onChanged: onChanged1),

        ElevatedButton(
          onPressed: () {},
          child: Text("Click"),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String label = "";
  dynamic floatingButtonFunction = null;
  bool? valueCheckbox = false;
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    String title = "Scaffold Widget";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getScaffold(title),
    );
  }

  Scaffold getScaffold(String title) {
    return Scaffold(
      appBar: getAppBar(title),
      body: getBody(title),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: floatingButtonFunction,
        child: Icon(Icons.add),
      ),
    );
  }

  dynamic assignPrintFunction() {
    label = "elevatedButtonFunction";
    print(label);
    floatingButtonFunction = () {
      print("floatingButtonFunction");
    };

    setState(() {});
  }

  dynamic assignNullFunction() {
    label = "textButtonFunction";
    print(label);
    floatingButtonFunction = null;
    valueCheckbox = false;
    setState(() {});
  }

  Center getBody(String title) {
    return Center(
      child: Column(children: [
        Text(label),
        TextButton(
          onPressed: assignNullFunction,
          child: Text("Click! Asignar null y false en checkbox"),
        ),
        ElevatedButton(
          onPressed: assignPrintFunction,
          child: Text("Click! Elevated button: Asignar print"),
        ),
        IconButton(
          onPressed: () => print("ElevatedButton"),
          icon: Icon(Icons.home),
        ),
        Checkbox(
          value: valueCheckbox,
          onChanged: (value) {
            valueCheckbox = value;
            print(value);
            setState(() {});
          },
        ),
        CheckboxListTile(
          value: valueCheckbox,
          onChanged: (value) {
            valueCheckbox = value;
            setState(() {});
          },
          title: Text("Checkbox"),
        ),
        // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
        RadioListTile(
          value: 1,
          title: Text("Opcion 1"),
          groupValue: groupValue,
          onChanged: (value) {
            print(value);
            groupValue = value;
            setState(() {});
          },
        ),
        RadioListTile(
          value: 2,
          title: Text("Opcion 2"),
          groupValue: groupValue,
          onChanged: (value) {
            print(value);
            groupValue = value;
            setState(() {});
          },
        )
      ]),
    );
  }

  AppBar getAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.blueAccent,
      // elevation: 10,
      actions: const [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }
}

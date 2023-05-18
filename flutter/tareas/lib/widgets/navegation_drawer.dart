import 'package:flutter/material.dart';
import 'package:tareas/pages/courses.dart';

class NavegationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              const Divider(),
              const Text(
                "Mis tareas de la U",
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => CoursePage(),
                    ),
                  );
                },
                style: ButtonStyle().copyWith(
                  minimumSize: MaterialStatePropertyAll(Size.fromHeight(40)),
                ),
                child: const Text("Mis cursos"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

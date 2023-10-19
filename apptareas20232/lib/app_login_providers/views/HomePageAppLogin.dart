import 'package:apptareas20232/app_login_providers/controllers/FirebaseAuth.dart';
import 'package:apptareas20232/app_login_providers/views/LoginProviders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePageAppLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageAppLogin();
  }
}

class _HomePageAppLogin extends State {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuthApp.currentUser();
    if (user == null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginProvider(),
        ),
      );
    }
    String name = user!.displayName ?? '';
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              ElevatedButton(
                child: Text('Salir'),
                onPressed: () {
                  FirebaseAuthApp.logout().then((value) => logout(context));
                },
              ),
              Divider(),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Contenido snackbar "),
                        action: SnackBarAction(
                          label: "Cerrar",
                          onPressed: () {
                            print('cerar');
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text("Prueba snackbar"))
            ],
          ),
        ),
      ),
    );
  }

  void logout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginProvider(),
      ),
    );
  }
}

import 'package:apptareas20232/app_login_providers/controllers/FirebaseAuth.dart';
import 'package:apptareas20232/app_login_providers/views/HomePageAppLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginProvider();
  }
}

class _LoginProvider extends State {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuthApp.currentUser();
    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePageAppLogin(),
        ),
      );
    }
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('GitHub'),
            onPressed: () async {
              FirebaseAuthApp().signInGithub().then((user) {
                if (user != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageAppLogin(),
                    ),
                  );
                }
              });
            },
          ),
        ),
      ),
    );
  }
}

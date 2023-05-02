import 'package:flutter/material.dart';
import 'package:todov2/app_external_auth/services/google.service.dart';

class HomeExternalAuth extends StatelessWidget {
  const HomeExternalAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("External Auth"),
        actions: [Icon(Icons.home)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              GoogleAuth googleAuth = GoogleAuth();
              await googleAuth.signInWithGoogle();
              // Aquí puedes realizar cualquier acción con el objeto userCredential
            },
            icon: Icon(Icons.login),
            label: Text("Iniciar sesión con Google"),
          )
        ],
      ),
    );
  }
}

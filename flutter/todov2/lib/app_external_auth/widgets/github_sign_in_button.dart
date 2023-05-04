import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todov2/app_external_auth/services/firebase_service.dart';
import 'package:todov2/app_external_auth/pages/user_info_screen.dart';

class GitHubSignInButton extends StatefulWidget {
  @override
  _GitHubSignInButtonState createState() => _GitHubSignInButtonState();
}

class _GitHubSignInButtonState extends State<GitHubSignInButton> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: loading
          ? const CircularProgressIndicator()
          : ElevatedButton.icon(
              onPressed: () async {
                setState(() {
                  loading = true;
                });
                User? user =
                    await FirebaseService.signInWithGitHub(context: context);
                setState(() {
                  loading = false;
                });
                if (user != null) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => UserInfoScreen(user: user),
                    ),
                    ModalRoute.withName('/home_external_auth'),
                  );
                }
              },
              icon: const Icon(Icons.login),
              label: const Text("Iniciar con github"),
            ),
    );
  }
}

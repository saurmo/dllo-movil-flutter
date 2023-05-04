import 'package:flutter/material.dart';
import 'package:todov2/app_external_auth/services/firebase_service.dart';
import 'package:todov2/app_external_auth/widgets/google_sign_in_button.dart';
import 'package:todov2/app_external_auth/widgets/facebook_sign_in_button.dart';
import 'package:todov2/app_external_auth/widgets/github_sign_in_button.dart';

class HomeExternalAuth extends StatefulWidget {
  const HomeExternalAuth({super.key});

  @override
  State<HomeExternalAuth> createState() => _HomeExternalAuthState();
}

class _HomeExternalAuthState extends State<HomeExternalAuth> {
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
          FutureBuilder(
            future: FirebaseService.initializeFirebase(context: context),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error initializing Firebase');
              } else if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    GoogleSignInButton(),
                    FacebookSignInButton(),
                    GitHubSignInButton(),
                  ],
                );
              }
              return const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.blue,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:authapp/pages/user_info_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  static Future<FirebaseApp?> firebaseInit(context) async {
    try {
      FirebaseApp app = await Firebase.initializeApp();
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => UserInfoScreen(user: user),
          ),
        );
      }

      return app;
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {}
  }

  static Future<User?> signInWithGitHub() async {
    try {
      GithubAuthProvider githubProvider = GithubAuthProvider();
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithProvider(githubProvider);
      return userCredential.user;
    } catch (e) {
      return null;
    }
  }

  static Future<User?> signInGoogle() async {
    try {
      // Trigger the authentication flow

      GoogleSignIn signIn = GoogleSignIn(scopes: ["email"]);

      final GoogleSignInAccount? googleUser = await signIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

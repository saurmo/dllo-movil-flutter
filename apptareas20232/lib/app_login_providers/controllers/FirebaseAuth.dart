import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthApp {
  FirebaseAuthApp() {}

  static User? currentUser() {
    final user = FirebaseAuth.instance.currentUser;
    print(user);
    return user;
  }

  Future<User?> signInGithub() async {
    GithubAuthProvider provider = GithubAuthProvider();
    final auth = await FirebaseAuth.instance.signInWithProvider(provider);
    return auth.user;
  }

  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}

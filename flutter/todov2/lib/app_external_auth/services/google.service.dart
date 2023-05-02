import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

/**
 * Primero se debe de firmar la app: Sirve para luego subir a la play store
 * https://docs.flutter.dev/deployment/android#create-an-upload-keystore
 *   keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
  SaurmoUdem
 */
class GoogleAuth {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<dynamic> signInWithGoogle() async {
    try {
      // Realiza el inicio de sesión con Google
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // Obtiene las credenciales de Google
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      // Crea un objeto de credenciales de Firebase con las credenciales de Google
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Inicia sesión en Firebase con las credenciales
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print(userCredential);
      return userCredential;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

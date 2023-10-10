import 'package:apptareas20232/app_form_v3_firebase/models/JsonAdapter.dart';
import 'package:apptareas20232/app_form_v3_firebase/models/User.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseController {
  Future<FirebaseDatabase> initFirebase() async {
    // final firebaseApp = Firebase.app();
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return FirebaseDatabase.instanceFor(
      app: firebaseApp,
      databaseURL: 'https://udem-projects-default-rtdb.firebaseio.com/',
    );
  }

  Future saveData({required String path, required IJsonAdapter data}) async {
    FirebaseDatabase db = await initFirebase();
    DatabaseReference ref = db.ref(path);
    await ref.set(data.createJson());
  }

  Future getData({required String path}) async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child(path).get();
    if (snapshot.exists) {
      return snapshot.value;
    } else {
      return null;
    }
  }
}

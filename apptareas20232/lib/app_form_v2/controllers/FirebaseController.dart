import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseController {
  Future<FirebaseDatabase> initFirebase() async {
    // final firebaseApp = Firebase.app();
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return FirebaseDatabase.instanceFor(
        app: firebaseApp,
        databaseURL: 'https://udem-projects-default-rtdb.firebaseio.com/');
  }

  Future saveData({required String path, Object? data}) async {
    try {
      FirebaseDatabase db = await initFirebase();
      print(db.databaseURL);
      DatabaseReference ref = db.ref(path);
      print(ref.path);
      await ref.set({
        "name": "John",
        "age": 18,
        "address": {"line1": "100 Mountain View"}
      });
      print('finish');
    } catch (e) {
      print(e);
    }
  }
}

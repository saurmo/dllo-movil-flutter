import 'dart:math';

import 'package:apptareas20232/app_form_v2/controllers/FirebaseController.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  GlobalKey keyFormUser = GlobalKey();
  FirebaseController _firebaseController = FirebaseController();
  String path = 'users';
  String name = "";
  User user = User();
  createUser() {
    try {
      String pathUser = "$path/123";

      _firebaseController.saveData(path: pathUser, data: user).then((value) {
        print("OK");
        print(value);
      }).catchError((onError) {
        print("ERROR");

        print(onError);
      });
    } catch (e) {
      print(e);
    }
  }
}

class User {
  String lastname = "";
  String email = "";

  User() {}
}

import 'package:apptareas20232/app_form_v3_firebase/controllers/FirebaseController.dart';
import 'package:apptareas20232/app_form_v3_firebase/models/User.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  GlobalKey keyFormUser = GlobalKey();
  final FirebaseController _firebaseController = FirebaseController();
  String path = 'users';

  User user = User();

  createUser() {
    String pathUser = "$path/${user.id}";
    _firebaseController.saveData(path: pathUser, data: user).then((value) {
      print("Creado");
    }).catchError((onError) {
      print(onError);
      print("Error al crear ");
    });
  }
}

import 'dart:convert';

import 'package:apptareas20232/app_form_v3_firebase/controllers/FirebaseController.dart';
import 'package:apptareas20232/app_form_v3_firebase/models/User.dart';

class UserController {
  final path = "users";

  final FirebaseController _firebaseController = FirebaseController();

  Future<dynamic> getUsers() async {
    return _firebaseController.getData(path: path);
  }

  List<User> createListUsers(Map<dynamic, dynamic> data) {
    print(data['123']);
    List<User> users = [];
    data.forEach((key, value) {
      print(value["name"]);
      User user = User();
      user.name = value["name"].toString();
      // if (value["name"]) {
      users.add(user);
      // }
    });

    return users;
  }
}

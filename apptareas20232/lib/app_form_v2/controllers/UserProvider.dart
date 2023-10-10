import 'dart:math';

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  GlobalKey keyFormUser = GlobalKey();

  String name = "";
  User user = User();
  createUser() {
    print(Random().nextInt(100));
  }
}

class User {
  String lastname = "";

  User() {}
}

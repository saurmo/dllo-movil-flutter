import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  int _count = 0;
  List<Map<String, dynamic>> _users = [];

  int get count => _count;
  List<Map<String, dynamic>> get users => _users;

  void increment() {
    _count++;
    notifyListeners();
  }

  void addUser(Map<String, dynamic> user) {
    _users.add(user);
    notifyListeners();
  }
}

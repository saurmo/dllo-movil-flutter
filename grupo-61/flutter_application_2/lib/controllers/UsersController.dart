import 'package:flutter_application_2/models/Jokes.dart';
import 'package:flutter_application_2/models/Users.dart';

void main(List<String> args) async {
  Users user = Users();
  Map<String, dynamic> jsonData = await user.getData();
  List<Users> users =  user.getUsers(jsonData);
  users.forEach((element) { print(element); });
}

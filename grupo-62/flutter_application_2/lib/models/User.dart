import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  late int id;
  late String email;
  late String firstName;
  late String lastName;
  late String avatar;

  User();

  User.fromJson(Map<String, dynamic> jsonUser) {
    id = jsonUser["id"] ?? 0;
    email = jsonUser["email"] ?? "";
    firstName = jsonUser["first_name"] ?? "";
    lastName = jsonUser["last_name"] ?? "";
    avatar = jsonUser["avatar"] ?? "";
  }

  Future<List<User>> getUsersFromApi() async {
    Uri url = Uri.parse("https://reqres.in/api/users?page=2");
    http.Response response = await http.get(url);
    String body = response.body;
    Map<String, dynamic> jsonBody = jsonDecode(body);
    List<dynamic> jsonUsers = jsonBody["data"];
    List<User> users = [];
    jsonUsers.forEach((element) {
      users.add(User.fromJson(element));
    });
    return users;
  }

  @override
  String toString() {
    return "$firstName $lastName";
  }
}

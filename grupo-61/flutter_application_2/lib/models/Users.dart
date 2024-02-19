import "package:http/http.dart" as http;
import 'dart:convert';

class Users {
  int id = 0;
  String email = "";
  String firstName = "";
  String lastName = "";
  String avatar = "";

  // Constructor por defecto
  Users();

// Constructor nombrado
  Users.fromJson({required Map<String, dynamic> jsonUser}) {
    id = jsonUser["id"] ?? 0;
    email = jsonUser["email"] ?? "----";
    firstName = jsonUser["first_name"] ?? "--";
    lastName = jsonUser["last_name"] ?? "";
    avatar = jsonUser["avatar"] ?? "";
  }

  Future<Map<String, dynamic>> getData() async {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    Future<http.Response> futureResponse = http.get(url);
    http.Response response = await futureResponse;
    Map<String, dynamic> responseData = jsonDecode(response.body);
    return responseData;
  }

  List<Users> getUsers(Map<String, dynamic> jsonData) {
    List<dynamic> jsonUsers = jsonData["data"];

    List<Users> users = [];
    jsonUsers.forEach((jsonUser) {
      users.add(Users.fromJson(jsonUser: jsonUser));
    });
    return users;
  }

  @override
  String toString() {
    return "$firstName $lastName";
  }
}

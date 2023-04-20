import 'package:todov2/app_ejemplo_form/models/http_call.dart';

class UserController {
  final String path = "users.json";
  String name = "";
  String email = "";
  String phone = "";
  String password = "";
  String rol = "";
  bool isStudent = false;
  double semester = 0.0;

  UserController() {}

  UserController.formJson(Map<String, dynamic> json) {
    print(json);
    name = json["name"];
    email = json["email"];
    phone = json["phone"];
    password = json["password"];
    rol = json["rol"];
    isStudent = json["is_student"];
    semester = json["semester"];
  }

  toJson() {
    return {
      "name": name.toString(),
      "email": email.toString(),
      "phone": phone.toString(),
      "password": password.toString(),
      "rol": rol.toString(),
      "isStudent": isStudent.toString(),
      "semester": semester.toString(),
    };
  }

  Future createUser(Map<String, dynamic> json) async {
    print("create user");
    HttpCall http = HttpCall();
    var response = await http.create(path, json);
    print(response);
    return response;
  }
}

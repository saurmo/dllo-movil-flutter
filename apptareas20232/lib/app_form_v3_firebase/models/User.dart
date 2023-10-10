import 'package:apptareas20232/app_form_v3_firebase/models/JsonAdapter.dart';

class User implements IJsonAdapter {
  late String id;
  late String name;
  late String lastname;
  late String email;
  late int age;
  late String password;
  late String birthDate;

  User() {
    id = "";
    name = "";
    lastname = "";
    email = "";
    age = 0;
    password = "";
    birthDate = "";
  }

  User.form({
    required String this.id,
    required String this.name,
    required String this.lastname,
    required String this.email,
    required int this.age,
    required String this.password,
    required String this.birthDate,
  }) {}

  @override
  createJson() {
    return {
      "id": id,
      "name": name,
      "lastname": lastname,
      "email": email,
      "age": age,
      "password": password,
      "birthDate": birthDate,
    };
  }
}

import 'package:apptareas20232/app_form_v2/views/forms/FormUser.dart';
import 'package:apptareas20232/app_form_v3_firebase/controllers/FirebaseController.dart';
import 'package:apptareas20232/app_form_v3_firebase/controllers/UserController.dart';
import 'package:apptareas20232/app_form_v3_firebase/models/User.dart';
import 'package:flutter/material.dart';

class ListUsersFirebase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListUsersFirebase();
  }
}

class _ListUsersFirebase extends State {
  final UserController _userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormUser(),
            ),
          );
        },
      ),
      body: FutureBuilder(
        future: _userController.getUsers(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const CircularProgressIndicator.adaptive();
            case ConnectionState.done:
              {
                if (snapshot.hasData) {
                  return renderListUsers(snapshot.data);
                } else {
                  return Text(snapshot.error.toString());
                }
              }
            default:
              return const Text("Ha ocurrido un error cargando");
          }
        },
      ),
    );
  }

  Widget renderListUsers(dynamic data) {
    List<User> users = _userController.createListUsers(data);
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index].name),
        );
      },
      itemCount: users.length,
    );
  }
}

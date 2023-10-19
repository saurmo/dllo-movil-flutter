import 'package:apptareas20232/app_form_v3_firebase/views/lists/ListUsers.dart';
import 'package:flutter/material.dart';

class AppFormsFirebase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppFormsFirebase();
  }
}

class _AppFormsFirebase extends State {
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forms")),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: RefreshIndicator.adaptive(
          onRefresh: refresh,
          child: ListUsersFirebase(),
        ),
      ),
    );
  }
}

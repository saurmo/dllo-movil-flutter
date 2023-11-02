import 'package:apptareas20232/app_form_v2/controllers/UserProvider.dart';
import 'package:apptareas20232/app_form_v2/views/forms/FormUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppFormsV2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppFormsV2();
  }
}

class _AppFormsV2 extends State {
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
          child: ChangeNotifierProvider(
            create: (context) => UserProvider(),
            child: FormUser(),
          ),
        ),
      ),
    );
  }
}
import 'package:apptareas20232/push_notification/services/FirebaseCloudMessage.dart';
import 'package:flutter/material.dart';

class HomePushNotification extends StatelessWidget {
  HomePushNotification() {}

  @override
  Widget build(BuildContext context) {
    FirebaseCloudMessage.getToken()
        .then((value) => print(value))
        .catchError((onError) => print(onError));
    return Scaffold(
      body: Container(
        child: Center(child: const Text('Push Notification')),
      ),
    );
  }
}

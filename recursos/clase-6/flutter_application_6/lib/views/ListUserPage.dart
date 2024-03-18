import 'package:flutter/material.dart';
import 'package:flutter_application_6/controllers/UserProvider.dart';
import 'package:flutter_application_6/views/NewUserPage.dart';
import 'package:provider/provider.dart';

class ListUserPage extends StatefulWidget {
  ListUserPage({super.key});

  @override
  ListUserPageState createState() {
    return ListUserPageState();
  }
}

class ListUserPageState extends State<ListUserPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Lista ${userProvider.count}"),
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(title: Text(userProvider.users[index]['name']));
              },
              itemCount: userProvider.users.length,
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewUserPage(),
                  ),
                );
              },
            ));
      },
    );
  }
}

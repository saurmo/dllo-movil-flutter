import 'package:flutter/material.dart';

import 'package:todov2/app_ejemplo_1/controller/User.dart';

class ListUsers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListUsers();
  }
}

class _ListUsers extends State<ListUsers> {
  List<String> users = ["Carlos", "Juan", "Emilio"];

  fillListView() {
    var usersWidgets = users.map((e) => Text(e)).toList();
    return usersWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:
            // ListView(
            //   children: [
            //     ...fillListView(),
            //     Divider(),
            //     Text("ITEM 1"),
            //     Divider(),
            //     Text("ITEM 2"),
            //     Divider(),
            //   ],
            // ),
            ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.person), // Icono Izquierda
            trailing: Icon(Icons.arrow_right), // Icono Derecha
            title: Text(users[index]),
            onTap: () {
              Navigator.pushNamed(context, 'detail_user',
                  arguments: User(users[index]));
            },
          ),
        ),
      ),
    );
  }
}

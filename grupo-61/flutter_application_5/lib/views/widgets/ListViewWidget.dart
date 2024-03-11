import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: [
    //     Text("Elemento 1"),
    //     Text("Elemento 2"),
    //     Text("Elemento 3"),
    //     Text("Elemento 4"),
    //     Text("Elemento 5")
    //   ],
    // );
    // return ListView.separated(
    //   itemBuilder: (context, index) {
    //     return Text("Element $index");
    //   },
    //   separatorBuilder: (context, index) {
    //     return const Divider();
    //   },
    //   itemCount: 50,
    // );
      return ListView.builder(
      itemBuilder: (context, index) {
        return Text("Element $index");
      },
      itemCount: 50,
    );
  }
}

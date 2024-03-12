import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({
    super.key,
  });

  var src =
      "https://cdn.pixabay.com/photo/2023/04/19/19/45/gosling-7938445_1280.jpg";

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   // scrollDirection: Axis.horizontal,
    //   children: [
    //     Container(
    //       child: Text("Element 1"),
    //       color: Colors.amberAccent,
    //     ),
    //     Text("Element 2"),
    //     Image.network(src),
    //     Text("Element 4"),
    //   ],
    // );

    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     return Text("Element $index");
    //   },
    //   itemCount: 50,
    // );

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index % 2 == 0) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              height: 80,
              color: Colors.blueGrey,
              child: Text("Element $index"),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              height: 80,
              color: Colors.deepOrangeAccent,
              child: Text("Otro elemto $index"),
            ),
          );
        }
      },
      itemCount: 50,
    );

    // return ListView.separated(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Text("Element $index");
    //     },
    //     separatorBuilder: (context, index) {
    //       return Divider();
    //     },
    //     itemCount: 80);
  }
}

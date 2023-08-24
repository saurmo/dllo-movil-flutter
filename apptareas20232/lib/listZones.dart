import 'package:apptareas20232/detailZone.dart';
import 'package:flutter/material.dart';

class ListZones extends StatefulWidget {
  const ListZones({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListZonesState();
  }
}

class _ListZonesState extends State<ListZones> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints);
      double maxWidth = constraints.maxWidth;
      double heightImg = constraints.maxHeight * 0.3;

      String url =
          "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg";
      String title = "Cascada Salto del Buey";
      String subtitle = "La ceja, Antioquia";
      String description =
          "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.";
      int stars = 50;
      var item = Container(
        height: 600,
        child: DetailZone(
            url: url,
            title: title,
            subtitle: subtitle,
            stars: stars,
            description: description),
      );

      return ListView(
        children: [item, item],
      );
    });
  }
}

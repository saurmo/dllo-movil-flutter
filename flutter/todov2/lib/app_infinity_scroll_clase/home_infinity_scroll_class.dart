import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeInfinityScrollClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeInfinityScrollClass();
  }
}

class _HomeInfinityScrollClass extends State {
  List<int> imagesId = [8, 5, 6, 500, 65, 2];
  ScrollController scrollController = ScrollController();
  addImages() {
    for (var i = 0; i < 6; i++) {
      imagesId.add(Random().nextInt(900));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var max = scrollController.position.maxScrollExtent;
      var currently = scrollController.position.pixels;
      print("max $max");
      print("currently $currently");
      if (currently + 400 >= max) {
        addImages();
        print("Se agregan imagenes");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemCount: imagesId.length,
        itemBuilder: (context, index) {
          return FadeInImage(
            width: double.infinity,
            height: 300,
            placeholder: AssetImage("/images/fade.gif"),
            image: NetworkImage(
                "https://picsum.photos/500/500?image=${imagesId[index]}"),
          );
          // return Image.asset("/images/fade.gif");
        },
      ),
    );
  }
}

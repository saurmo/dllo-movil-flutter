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
  bool loading = false;

  addImages() {
    for (var i = 0; i < 6; i++) {
      imagesId.add(Random().nextInt(900));
    }
  }

  getInfo() async {
    if (loading == true) {
      return;
    }

    loading = true;
    setState(() {
      
    });
    await Future.delayed(const Duration(seconds: 3));
    addImages();

    loading = false;
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var max = scrollController.position.maxScrollExtent;
      var currently = scrollController.position.pixels;
    
      if (currently + 400 >= max) {
        getInfo();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Stack(children: [
          ListView.builder(
            controller: scrollController,
            itemCount: imagesId.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: AssetImage("assets/images/fade.gif"),
                image: NetworkImage(
                    "https://picsum.photos/500/500?image=${imagesId[index]}"),
              );
            },
          ),
          if (loading)
            Positioned(
                bottom: 20,
                left: size.width * 0.5 - 20,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircularProgressIndicator(),
                ))
        ]),
      ),
    );
  }

  Future<void> onRefresh() async {
        imagesId=[];
        await getInfo();
        setState(() {
          
        });
        return ;
      }
}

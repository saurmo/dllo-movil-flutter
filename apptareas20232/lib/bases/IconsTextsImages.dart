import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createScaffold(),
    );
  }
}

createScaffold() {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación 2023 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          createIcon(),
          createIconButton(),
          createText("Texto 1", weight: FontWeight.w900),
          createText("Texto 2", weight: FontWeight.bold),
          createText("Texto 3", weight: FontWeight.w100),
          createImage(),
          createImageNetwork(),
          createImageProvider(),
          createImageProviderContainer(),
        ],
      ));
}

createIcon() {
  return Icon(
    Icons.people,
    size: 50,
  );
}

createText(String text, {weight}) {
  return Text(
    text,
    style: TextStyle(fontWeight: weight, color: Colors.blueAccent),
  );
}

createIconButton() {
  return IconButton(
    onPressed: () {
      print("Icon Button");
    },
    icon: Icon(Icons.search),
    iconSize: 50,
    color: Colors.amber,
  );
}

createImage() {
  return Image.asset(
    "assets/images/logo.jpg",
    width: 100,
    alignment: Alignment.center,
    height: 100,
  );
}

createImageNetwork() {
  return Image.network(
    "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
    width: 100,
    alignment: Alignment.center,
    height: 100,
  );
}

createImageProvider() {
  return Image(
    image: AssetImage("assets/images/logo.jpg"),
    width: 100,
    alignment: Alignment.center,
    height: 100,
  );
}

createImageProviderContainer() {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
        color: Colors.cyan,
        image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg"))),
  );
}

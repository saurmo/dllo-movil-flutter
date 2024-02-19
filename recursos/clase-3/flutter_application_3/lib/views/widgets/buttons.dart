import 'package:flutter/material.dart';

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

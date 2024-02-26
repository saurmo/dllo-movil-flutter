import 'package:flutter/material.dart';

Widget crearImagenes() {
  return Column(
    children: [
      // createImage(),
      // createImageColor(),
      // createImageNetwork(),
      // createImageProviderContainer(),
      Image.asset(
        'assets/images/casa.jpg',
        height: 200,
        width: 400,
        fit: BoxFit.contain,
      ),
    ],
  );
}

createImage() {
  return Image.asset(
    "assets/images/casa.jpg",
    width: 150,
    alignment: Alignment.center,
    height: 150,
  );
}

createImageColor() {
  return Image.asset(
    'assets/images/casa.jpg',
    height: 150,
    width: 150,
    color: Colors.lightBlue,
    colorBlendMode: BlendMode.darken,
  );
}

createImageNetwork() {
  return Image.network(
    "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
    width: 200,
    alignment: Alignment.center,
    height: 200,
  );
}

createImageProviderContainer() {
  return Container(
    width: 250,
    height: 250,
    decoration: BoxDecoration(
      color: Colors.cyan,
      image: DecorationImage(
        image: NetworkImage(
            "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg"),
      ),
    ),
  );
}

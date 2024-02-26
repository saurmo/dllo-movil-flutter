import 'package:flutter/material.dart';

Widget crearImagenes() {
  return Column(
    children: [
      createImage(),
      createImageColor(),
      createImageNetwork(),
      createImageProviderContainer(),
      Image.asset(
        'assets/images/casa.jpg',
        height: 100,
        width: 100,
        fit: BoxFit.fitWidth,
      ),
    ],
  );
}

createImage() {
  return Image.asset(
    "assets/images/casa.jpg",
    width: 100,
    alignment: Alignment.center,
    height: 100,
  );
}

createImageColor() {
  return Image.asset(
    'assets/images/casa.jpg',
    height: 100,
    width: 100,
    color: Colors.orange.withOpacity(0.5),
    colorBlendMode: BlendMode.multiply,
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

createImageProviderContainer() {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.cyan,
      image: DecorationImage(
        image: NetworkImage(
            "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg"),
      ),
    ),
  );
}

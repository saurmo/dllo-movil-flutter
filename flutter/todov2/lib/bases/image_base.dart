import 'package:flutter/material.dart';

class ImageBase extends StatelessWidget {
  ImageBase();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: [
        Image.asset("assets/images/fondoudem.jpg"),
        Image.network("https://picsum.photos/200"),
        Image(
          image: AssetImage("assets/images/fondoudem.jpg"),
          width: 180,
          height: 180,
        ),
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
            ),
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: NetworkImage(
                  "https://d8bwfgv5erevs.cloudfront.net/cdn/13/images/curso-online-perfil-psicologico-de-una-persona_l_primaria_1_1524733601.jpg"),
            ),
          ),
        ),
      ],
    ));
  }
}

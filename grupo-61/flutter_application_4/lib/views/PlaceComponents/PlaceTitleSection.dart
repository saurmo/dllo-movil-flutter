import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/Place.dart';

Widget placeTitleSection(Place place) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [titleSection(place), starSection(place)],
    ),
  );
}

Row starSection(Place place) {
  return Row(
    children: [
      const Icon(
        Icons.star,
        color: Colors.redAccent,
      ),
      Text("${place.stars}")
    ],
  );
}

Column titleSection(Place place) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(place.title.toUpperCase(),   style:const TextStyle(fontWeight: FontWeight.w700)),
      Text(place.subtitle, style: const TextStyle(fontWeight: FontWeight.w300)),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:places_app/models/Place.dart';

Widget placeTitle(Place place) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getTitle(place),
        getStars(place),
      ],
    ),
  );
}

Row getStars(Place place) {
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

Column getTitle(Place place) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        place.title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      Text(
        place.subtitle,
        style: const TextStyle(fontWeight: FontWeight.w400),
      )
    ],
  );
}

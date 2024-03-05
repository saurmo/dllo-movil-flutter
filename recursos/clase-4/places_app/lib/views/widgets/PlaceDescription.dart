import 'package:flutter/material.dart';
import 'package:places_app/models/Place.dart';

Widget placeDescription(Place place) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(
      place.description,
      textAlign: TextAlign.justify,
    ),
  );
}

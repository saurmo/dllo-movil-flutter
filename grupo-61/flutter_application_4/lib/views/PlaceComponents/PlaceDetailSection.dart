import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/Place.dart';

Widget placeDetailSection(Place place) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(
      place.description,
      textAlign: TextAlign.justify,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:places_app/models/Place.dart';

Widget placeImage(Place place) {
  return Image.network(place.urlImage);
}

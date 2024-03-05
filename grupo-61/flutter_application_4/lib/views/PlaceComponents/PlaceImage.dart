import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/Place.dart';

Widget placeImage(Place place) {
  return Image.network(place.urlImage);
}

import 'package:flutter/material.dart';
import 'package:places_app/controller/PlaceController.dart';
import 'package:places_app/models/Place.dart';
import 'package:places_app/views/widgets/PlaceActions.dart';
import 'package:places_app/views/widgets/PlaceDescription.dart';
import 'package:places_app/views/widgets/PlaceImage.dart';
import 'package:places_app/views/widgets/PlaceTitle.dart';

class PlacePage extends StatelessWidget {
  // List<Place> places = [];
  Place place;

  PlacePage({super.key, required this.place}) {
    // places = getPlaces();
  }

  @override
  Widget build(BuildContext context) {
    // Place place = places[1];
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            placeImage(place),
            placeTitle(place),
            placeActions(),
            placeDescription(place),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:places_app/controller/PlaceController.dart';
import 'package:places_app/models/Place.dart';
import 'package:places_app/views/pages/PlaceForm.dart';
import 'package:places_app/views/pages/PlacePage.dart';
import 'package:places_app/views/widgets/PlaceTitle.dart';

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlaceForm(),
            ),
          );
        },
      ),
    );
  }

  getBody(BuildContext context) {
    List<Place> places = getPlaces();
    List<Widget> placesWidget = [];
    for (Place place in places) {
      placesWidget.add(
        InkWell(
          onTap: () {
            // Navegar a otra página
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlacePage(
                  place: place,
                ),
              ),
            );
          },
          child: placeTitle(place),
        ),
      );
    }
    return ListView(
      children: placesWidget,
    );
  }
}

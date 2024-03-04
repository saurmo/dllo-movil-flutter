import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/models/Place.dart';
import 'package:flutter_application_4/views/PlaceComponents/PlaceActionSection.dart';
import 'package:flutter_application_4/views/PlaceComponents/PlaceDetailSection.dart';
import 'package:flutter_application_4/views/PlaceComponents/PlaceImage.dart';
import 'package:flutter_application_4/views/PlaceComponents/PlaceTitleSection.dart';

// ignore: must_be_immutable
class PlaceWidget extends StatefulWidget {
  Place place;
  PlaceWidget({super.key, required this.place});

  @override
  State<StatefulWidget> createState() => _PlaceWidget(place: place);
}

class _PlaceWidget extends State {
   Place place;
  _PlaceWidget({ required this.place});

  @override
  Widget build(BuildContext context) {
    // Place place = 
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            placeImage(place),
            placeTitleSection(place),
            placeActionSection(),
            placeDetailSection(place),
          ],
        ),
      ),
    );
  }
}

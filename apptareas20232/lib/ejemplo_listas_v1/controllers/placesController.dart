import 'package:apptareas20232/ejemplo_listas_v1/models/Place.dart';

class PlacesController {
  fillListPlaces() {
    var places = Place.getPlaces();
    return places;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/Place.dart';
import 'package:flutter_application_4/views/PlaceComponents/PlaceTitleSection.dart';
import 'package:flutter_application_4/views/PlaceWidget.dart';

class PlaceList extends StatefulWidget {
  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  List<Place> places = [
    Place(
      urlImage:
          "https://media.istockphoto.com/id/1453881456/es/foto/reserva-de-amapolas-del-lago-elsinore-abundancia.jpg?s=2048x2048&w=is&k=20&c=EGtWJgjtnk5ongx3G6VlJAzLrHC8wPxX4voFtgOGqLA=",
      title: "Flor & Montaña",
      subtitle: "Flor naranja",
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen",
    ),
    Place(
      urlImage:
          "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
      title: "Arbol & Agua",
      subtitle: "Lago",
      description:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> placesTitles = [];
    for (var place in places) {
      placesTitles.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          placeTitleSection(place),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  PlaceWidget(place: place),
                ),
              );
            },
            icon: Icon(Icons.remove_red_eye_outlined),
          )
        ],
      ));
    }
    return ListView(
      children: placesTitles,
      
    );
  }
}

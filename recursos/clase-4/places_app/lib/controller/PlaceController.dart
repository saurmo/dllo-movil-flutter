import 'package:places_app/models/Place.dart';

List<Place> getPlaces() {
  return [
    Place(
        urlImage:
            "https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_1280.jpg",
        title: "Lago en Canadá",
        subtitle: "Alberta Canadá",
        description:
            "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
        stars: 2986),
    Place(
        urlImage:
            "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_1280.jpg",
        title: "Aurora",
        subtitle: "Aurora Islandia",
        description:
            "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
        stars: 3487),
  ];
}

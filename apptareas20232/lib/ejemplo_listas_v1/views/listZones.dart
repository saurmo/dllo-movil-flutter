import 'package:apptareas20232/ejemplo_listas_v1/controllers/placesController.dart';
import 'package:apptareas20232/ejemplo_listas_v1/models/Place.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:flutter/material.dart';

class ListZones extends StatefulWidget {
  const ListZones({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListZonesState();
  }
}

class _ListZonesState extends State<ListZones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de lugares")),
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints);
        double maxWidth = constraints.maxWidth;
        double heightImg = constraints.maxHeight * 0.3;

        List<Place> places = PlacesController().fillListPlaces();

        // // LISTA BASICA
        // return ListView(
        //   children: placesViews,
        // );

        // // LISTA DONDE PUEDO ALTERAR EL SEPARADOR
        //   return ListView.separated(
        //       itemBuilder: (context, index) {
        //         Place place = places[index];
        //         return createHeader(
        //             title: place.title,
        //             subtitle: place.subtitle,
        //             stars: place.stars ?? 0);
        //       },
        //       separatorBuilder: (context, index) => const Divider(
        //             height: 10,
        //             color: Colors.red,
        //           ),
        //       itemCount: placesViews.length);

        // return ListView.builder(
        //   itemBuilder: (context, index) {
        //     Place place = places[index];
        //     return ListTile(
        //       title: Text(place.title),
        //       subtitle: Text(place.subtitle),
        //     );
        //   },
        //   itemCount: places.length,
        // );

        return ListView.separated(
          itemBuilder: (context, index) {
            Place place = places[index];
            return ListTile(
              title: Text(place.title),
              subtitle: Text(place.subtitle),
              onTap: () {
                // Navigator.pushNamed(context, 'detailPlace');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailZone(
                        place: place,
                      ),
                    ));
              },
            );
          },
          itemCount: places.length,
          separatorBuilder: (context, index) => const Divider(),
        );
      }),
    );
  }
}

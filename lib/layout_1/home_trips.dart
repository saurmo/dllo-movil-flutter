import 'package:flutter/widgets.dart';
import 'package:todo/layout_1/review_list.dart';
import 'package:todo/layout_1/description_place.dart';
import 'package:todo/layout_1/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("San Rafael", 4, descriptionDummy),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}

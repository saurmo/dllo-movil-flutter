import 'package:flutter/widgets.dart';
import 'package:todo/layout_2/description_task.dart';

class Layout2 extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builderContext, constrains) {
        return ListView(
          children: [],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_list_view.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardListView(),
      ],
    );
  }
}

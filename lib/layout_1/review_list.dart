import 'package:flutter/material.dart';
import 'package:todo/layout_1/review_section.dart';

class ReviewList extends StatelessWidget {
  ReviewList();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 1", "Aguacates 1", "comment"),
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 2", "Aguacates2", "comment2"),
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 3", "Aguacates3", "comment3"),
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 3", "Aguacates3", "comment3"),
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 3", "Aguacates3", "comment3"),
      ReviewSection(
          "assets/images/agua.jpg", "Santiago 3", "Aguacates3", "comment3"),
    ]);
  }
}

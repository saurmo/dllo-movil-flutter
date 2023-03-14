import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/form_1/form.dart';
import 'package:todo/layout_1/gradient_back.dart';
import 'package:todo/layout_1/home_trips.dart';
import 'package:todo/layout_1/profile_trips.dart';
import 'package:todo/layout_1/review_list.dart';
import 'package:todo/layout_1/description_place.dart';
import 'package:todo/layout_1/header_appbar.dart';
import 'package:todo/layout_1/search_trips.dart';

class Form1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Form1();
  }
}

class _Form1 extends State<Form1> {
  int indexTap = 0;
  final List<Widget> pages = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  onTap(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Formulario(),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/layout_1/gradient_back.dart';
import 'package:todo/layout_1/home_trips.dart';
import 'package:todo/layout_1/profile_trips.dart';
import 'package:todo/layout_1/review_list.dart';
import 'package:todo/layout_1/description_place.dart';
import 'package:todo/layout_1/header_appbar.dart';
import 'package:todo/layout_1/search_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips> {
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
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple,
            ),
            child: BottomNavigationBar(
              onTap: onTap,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.person),
                ),
              ],
            )),
        body: pages[indexTap]);
  }
}

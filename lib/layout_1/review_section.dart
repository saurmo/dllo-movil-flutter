import 'dart:io';

import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  late String pathImage;
  late String name;
  late String details;
  late String comment;
  ReviewSection(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17, color: Colors.grey),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13, color: Colors.grey),
      ),
    );

    final userCommnet = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userCommnet],
    );
    final photo = Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
        // child: Image.asset(
        //   pathImage,
        //   width: 40,
        //   height: 30,
        //   alignment: Alignment.topLeft,
      ),
    );

    final titleStart = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        photo,
        userDetails,
      ],
    );
    return titleStart;
  }
}

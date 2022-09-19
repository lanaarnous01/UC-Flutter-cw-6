import 'package:flutter/material.dart';

import 'package:cw1/models/models.dart';

class Landmarks extends StatelessWidget {
  const Landmarks({super.key, required this.building});

  final Building building;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(building.name),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: [
            Container(
              child: Image.network(
                building.imgUrl,
              ),
              width: 250,
            ),
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                building.name,
                style: TextStyle(color: Colors.blueGrey, fontSize: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 60, left: 20),
              // alignment: Alignment.center,
              child: Text(
                building.description,
                style: TextStyle(color: Colors.blueGrey, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cw1/homeScreen/landmarks.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
      description:
          'The Kuwait Towers are a group of three thin towers in Kuwait City, standing on a promontory into the Persian Gulf.',
    ),
    Building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
      description:
          'The Liberation Tower is a 372-meter-high or 1,220 feet tall telecommunications tower in Kuwait City, Kuwait. It is the second-tallest structure in the country and the 39th tallest building in the world.',
    ),
    Building(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
      description:
          'The Grand Mosque (Arabic: المسجد الكبير) is the largest mosque in Kuwait. Its area spans 45,000 square metres (480,000 sq ft), out of which the building itself covers 20,000 square metres (220,000 sq ft). ',
    ),
    Building(
      name: 'Al-Hamra Tower',
      imgUrl: 'https://alhamra.com.kw/imagesimages/product-facts-1.jpg',
      description:
          'The Al Hamra Firduos Tower is a skyscraper in Kuwait City, Kuwait. It is the tallest building in Kuwait.',
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuwait Landmarks'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Landmarks(
                              building: buildings[index],
                            )));
              },
              child: Row(
                children: [
                  Image.network(
                    buildings[index].imgUrl,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

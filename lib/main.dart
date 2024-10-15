
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomCenter, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
              ])),
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              createLocation(
                                  imagePath: 'assets/images/place.jpg',
                                  description: 'Mount Everest',
                                  distance: '2.1 mi'),
                              createLocation(
                                  imagePath: 'assets/images/place2.jpg',
                                  description: 'National Animal Park',
                                  distance: '3.7 mi'),
                              createLocation(
                                  imagePath: 'assets/images/place3.jpg',
                                  description: 'Mid-Hudson Bridge',
                                  distance: '8.4 mi'),
                            ],
                          )),
                      const SizedBox(
                        height: 35.0,
                      ),
                    ],
                  )),
            ),
          ),
          createPoint(top: 120.0, left: 50.0),
          createPoint(top: 190.0, left: 190.0),
          createPoint(top: 219.0, left: 60.0)
        ],
      ),
    );
  }

  Widget createPoint({required double top, required double left}) {
    return Positioned(
        top: top,
        left: left,
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
        ));
  }

  Widget createLocation(
      {required String imagePath,
      required String description,
      required String distance}) {
    return AspectRatio(
        aspectRatio: 1.7 / 2,
        child: Container(
          margin: const EdgeInsets.only(right: 20.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      distance,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                description,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.star_border,
                  color: Colors.yellow[700],
                  size: 30.0,
                ),
              )
            ],
          ),
        ));
  }
}

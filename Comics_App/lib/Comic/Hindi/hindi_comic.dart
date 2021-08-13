import 'package:carousel_slider/carousel_slider.dart';
import 'package:comic_app/Comic/Hindi/ateet.dart';
import 'package:comic_app/Comic/Hindi/doga.dart';
import 'package:comic_app/Comic/Hindi/saudangi.dart';
import 'package:flutter/material.dart';

class Hindi extends StatefulWidget {
  @override
  _HindiState createState() => _HindiState();
}

class _HindiState extends State<Hindi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: [
            Image(
              image: AssetImage("asset/raj.jpg"),
              fit: BoxFit.contain,
            ),
            Image(
              image: AssetImage("asset/scd.jpg"),
              fit: BoxFit.contain,
            ),
            Image(
              image: AssetImage("asset/doga-solo.jpg"),
              fit: BoxFit.contain,
            ),
          ],
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              initialPage: 0,
              height: MediaQuery.of(context).size.height / 3),
        ),
        Row(children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "NEW COMIC",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    " ",
                  ),
                ),
              ))
        ]),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            padding: EdgeInsets.all(4.0),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Soudangi()));
                },
                child: Card(
                  elevation: 12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: AssetImage("asset/Saudangi.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Saudangi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Doga()));
                },
                child: Card(
                  elevation: 12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: AssetImage("asset/doga.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Doga Ka Curfew",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: AssetImage("asset/sarva.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "SarvaShaktiMan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ateet()));
                },
                child: Card(
                  elevation: 12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: AssetImage("asset/ateet.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Ateet",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 12,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: AssetImage("asset/nam.jpg"),
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Nagraj America Me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

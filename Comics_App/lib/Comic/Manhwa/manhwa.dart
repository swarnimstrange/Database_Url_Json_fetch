import 'package:carousel_slider/carousel_slider.dart';
import 'package:comic_app/Comic/Manhwa/racerx.dart';
import 'package:comic_app/Comic/Manhwa/sfl.dart';
import 'package:comic_app/Comic/Manhwa/sleepless.dart';
import 'package:flutter/material.dart';

class Manhwa extends StatefulWidget {
  @override
  _ManhwaState createState() => _ManhwaState();
}

class _ManhwaState extends State<Manhwa> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.network(
                "https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/07/manhwa-manga-manhua.jpg",
                fit: BoxFit.contain,
              ),
              Image(
                image: AssetImage("asset/hero.jpg"),
                fit: BoxFit.contain,
              ),
              Image(
                image: AssetImage("asset/manhwa.jpg"),
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
                )),
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
                        MaterialPageRoute(builder: (context) => Racer()));
                  },
                  child: Card(
                    elevation: 12,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image(
                          image: AssetImage("asset/racerx.jpg"),
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
                                      "Racer X",
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
                        MaterialPageRoute(builder: (context) => Street()));
                  },
                  child: Card(
                    elevation: 12,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image(
                          image: AssetImage("asset/sfl01.jpg"),
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
                                      "Street Fighting Legends",
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
                        MaterialPageRoute(builder: (context) => Sleepless()));
                  },
                  child: Card(
                    elevation: 12,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image(
                          image: AssetImage("asset/sleepless.jpg"),
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
                                      "SleepLess",
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
                          image: AssetImage("asset/cyborg.jpg"),
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
                                      "Cyborg 008",
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
        ]);
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:comic_app/Comic/English/crit.dart';
import 'package:comic_app/Comic/English/ironman.dart';
import 'package:comic_app/Comic/English/just_lea.dart';
import 'package:comic_app/Comic/English/origin.dart';
import 'package:flutter/material.dart';

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: [
            Image.network(
              "https://cdn3.whatculture.com/images/2019/02/425f02bcad4830ef-1200x675.jpg",
              fit: BoxFit.contain,
            ),
            Image(
              image: AssetImage("asset/avenger.jpg"),
              fit: BoxFit.contain,
            ),
            Image(
              image: AssetImage("asset/batman.jpg"),
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
                    MaterialPageRoute(builder: (context) => IronMan()));
              },
              child: Card(
                elevation: 12,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage("asset/IronMan_Thor/01.jpg"),
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
                                  "Iron Man and Thor",
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
                    context, MaterialPageRoute(builder: (context) => DC()));
              },
              child: Card(
                elevation: 12,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage("asset/jl01.jpg"),
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
                                  "Justice League",
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
                    context, MaterialPageRoute(builder: (context) => Crit()));
              },
              child: Card(
                elevation: 12,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage("asset/crit01.jpg"),
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
                                  "C.R.I.T",
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
                    context, MaterialPageRoute(builder: (context) => Origin()));
              },
              child: Card(
                elevation: 12,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage("asset/SuperHeroOrigin/01.jpg"),
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
                                  "Super Hero Origin",
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
                      image: AssetImage("asset/rotr01.jpg"),
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
                                  "Roy Of The Rovers",
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
        )),
      ],
    );
  }
}

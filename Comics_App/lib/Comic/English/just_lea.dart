import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DC extends StatefulWidget {
  @override
  _DCState createState() => _DCState();
}

class _DCState extends State<DC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Justice League"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/01.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/02.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/04.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/05.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/06.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/07.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/08.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/09.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/10.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/11.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/12.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/13.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/14.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/15.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/17.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/18.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/19.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/JusticeLeague/20.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ],
          options: CarouselOptions(
            autoPlay: false,
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            viewportFraction: 1,
            initialPage: 0,
          ),
        ),
      ),
    );
  }
}

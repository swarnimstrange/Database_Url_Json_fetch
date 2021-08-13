import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Street extends StatefulWidget {
  @override
  _StreetState createState() => _StreetState();
}

class _StreetState extends State<Street> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Street Fighter Legends"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/01.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/02.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/04.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/05.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/06.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/07.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/08.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/09.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/10.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Street/11.jpg"),
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

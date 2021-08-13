import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sleepless extends StatefulWidget {
  @override
  _SleeplessState createState() => _SleeplessState();
}

class _SleeplessState extends State<Sleepless> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sleepless"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/01.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/02.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/04.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/05.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/06.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/07.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/08.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/09.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/10.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/Sleepless/11.jpg"),
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

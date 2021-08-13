import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Crit extends StatefulWidget {
  @override
  _CritState createState() => _CritState();
}

class _CritState extends State<Crit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("C.R.I.T"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/01.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/02.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/04.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/05.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/06.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/07.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/08.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/09.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/10.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/11.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/C.R.I.T/12.jpg"),
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

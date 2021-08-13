import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class IronMan extends StatefulWidget {
  @override
  _IronManState createState() => _IronManState();
}

class _IronManState extends State<IronMan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Iron Man and Thor"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/01.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/02.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/04.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/05.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/06.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/07.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/08.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/09.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/10.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/11.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/12.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/13.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/14.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/15.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/17.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/18.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/19.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/20.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/21.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/22.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/23.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/24.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            InteractiveViewer(
              minScale: 1.0,
              maxScale: 5.0,
              child: Image(
                image: AssetImage("asset/IronMan_Thor/25.jpg"),
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

import 'package:comic_app/Comic/English/english_comic.dart';
import 'package:comic_app/Comic/Hindi/hindi_comic.dart';
import 'package:comic_app/Comic/Manhwa/manhwa.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comic App"),
        backgroundColor: Colors.lightGreen,
        bottom: TabBar(
          tabs: [
            Tab(
              child: Text("English"),
            ),
            Tab(
              child: Text("Hindi "),
            ),
            Tab(
              child: Text("Manhwa"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          English(),
          Hindi(),
          Manhwa(),
        ],
      ),
    );
  }
}

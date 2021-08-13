import 'package:flutter/material.dart';
import 'package:wwe_cards/propage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WWE Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProPage(),
    );
  }
}

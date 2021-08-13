import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState(); 
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    splash();
  }

  Future<Timer>splash()async{
    return Timer(Duration(seconds:4),onDoneLoading);
  }

  onDoneLoading(){
    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/10177.jpg')
        ],)
        );
        }

}
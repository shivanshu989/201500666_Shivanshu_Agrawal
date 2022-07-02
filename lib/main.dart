import 'package:flutter/material.dart';
import 'package:test_app/Screens/Screen0.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Screen0())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

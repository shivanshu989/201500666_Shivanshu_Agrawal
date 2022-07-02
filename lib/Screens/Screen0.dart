// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/Screens/Screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("TRAINING",
                style: TextStyle(fontSize: 50, color: Colors.indigo)),
            Image(image: AssetImage('images/training.jpg')),
            ElevatedButton(
                child: Text("Get Started", style: TextStyle(fontSize: 30)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen1();
                  }));
                })
          ],
        ),
      ),
    );
  }
}

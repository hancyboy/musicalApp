import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text(
              "Welcome Page!",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            " This is a android application where you can find tons of lyrics of Hindi, Nepali and English songs!",
            style: TextStyle(fontSize: 15),
          ),
        ));
  }
}

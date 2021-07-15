import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Welcome Page!",
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: new Text(
          " This is a android application where you can find tons of lyrics of Hindi, Nepali and English songs!",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.purple,
          title: new Text('About Developer!'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: new Text(
            " This is the Lyrical android application develop by Umesh Rai and Bibek Kaliraj. We are the students of Computer Science of Pulchowk Engineering Campus",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ));
  }
}

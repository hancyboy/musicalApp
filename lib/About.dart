import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Center(
            child: new Text('About Developer!'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            " This is the Lyrical android application develop by Umesh Rai and Bibek Kaliraj. We are the students of Computer Science of Pulchowk Engineering Campus",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ));
  }
}

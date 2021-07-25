import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBar(
            elevation: 0,
            brightness: Brightness.dark,
            backgroundColor: Colors.purple,
            title: new Text('About Developer!'),
            centerTitle: true,
          ),
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

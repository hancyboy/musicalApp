import 'package:flutter/material.dart';
import 'package:musical_app/EnglishScreen.dart';
import 'package:musical_app/HindiScreen.dart';
import 'package:musical_app/NepaliScreen.dart';
/*import 'package:musical_app/SongList.dart';

import 'package:musical_app/ReaderScreen.dart';*/

void main() => runApp(MaterialApp(
      title: "Lyrics App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lyrics App'),
          centerTitle: true,
          bottom: TabBar(indicatorWeight: 4.5, tabs: <Widget>[
            Tab(
              text: 'English Song',
            ),
            Tab(
              text: 'Hindi Song',
            ),
            Tab(
              text: 'Nepali Song',
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            EnglishScreen(),
            HindiScreen(),
            NepaliScreen(),
          ],
        ),
      ),
    );
  }
}

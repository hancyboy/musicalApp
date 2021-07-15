import 'package:flutter/material.dart';
import 'package:musical_app/songs/EnglishScreen.dart';
import 'package:musical_app/songs/HindiScreen.dart';
import 'package:musical_app/songs/NepaliScreen.dart';
import 'package:musical_app/nav-drawer.dart';
import 'package:musical_app/HomeScreen.dart';

void main() => runApp(MaterialApp(
      title: "Lyrics App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    ));

Color primaryColor = Colors.purple;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Lyrics App'),
          centerTitle: true,
          backgroundColor: primaryColor,
          bottom: TabBar(
              indicatorWeight: 4.5,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: 'Home',
                ),
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
            HomeScreen(),
            EnglishScreen(),
            HindiScreen(),
            NepaliScreen(),
          ],
        ),
      ),
    );
  }
}

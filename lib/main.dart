import 'package:flutter/material.dart';
import 'package:musical_app/EnglishScreen.dart';
import 'package:musical_app/HindiScreen.dart';
import 'package:musical_app/NepaliScreen.dart';
import 'package:musical_app/nav-drawer.dart';

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
      length: 3,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Lyrics App'),
          centerTitle: true,
          backgroundColor: primaryColor,
          bottom: TabBar(indicatorWeight: 4.5, indicatorColor: Colors.white,
              /*onTap: (index) {
                switch (index) {
                  case 0:
                    primaryColor = Colors.purple;
                    break;
                  case 1:
                    primaryColor = Colors.orange;
                    break;
                  case 2:
                    primaryColor = Colors.blue;
                    break;
                  default:
                }
              },*/
              tabs: <Widget>[
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

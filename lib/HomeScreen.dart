import 'package:flutter/material.dart';
import 'package:musical_app/songs/EnglishScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //We take the image from the assets
            Image.asset(
              'assets/images/icon.png',
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to Musical_App!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple, fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(
              'A complete song lyrics for music lovers. Listen all types evergreen Hindi, Nepali, English songs anywhere anytime!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple, fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => EnglishScreen()));
              },
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Start Listening',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musical_app/About.dart';
import 'package:musical_app/Utils.dart';
import 'package:musical_app/Welcome.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Lyrics ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Welcome()));
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => Utils.openEmail(toEmail: 'raiumesh470@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.airplay),
            title: Text('About'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

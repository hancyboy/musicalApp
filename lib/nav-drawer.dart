import 'package:flutter/material.dart';
import 'package:musical_app/About.dart';
//import 'package:musical_app/Utils.dart';
import 'package:musical_app/Welcome.dart';
import 'package:url_launcher/url_launcher.dart';

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
                color: Colors.purple,
                image: DecorationImage(
                    image: AssetImage('assets/images/icon.png'))),
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
              onTap: () async {
                const url =
                    'mailto:raiumesh470@gmail.com?subject=News&body=New%20plugin';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  print('could not launch $url');
                }
              }),
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

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

/*var songlist = [
  'song 1',
  'song 2',
  'song 3',
  'song 4',
  'song 5',
  'song 6',
  'song 7',
  'song 8',
  'song 9',
];*/
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
/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lyrics App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: songList.length,
          itemBuilder: (context, index) {
            Song song = songList[index];
            return Card(
              child: ListTile(
                title: Text(
                  song.title,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  song.singerName,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReaderScreen(song)),
                  );
                },
              ),
            );
          }),
      body: Container(
        child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: songlist.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (songlist[index] == "song 1") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(1)),
                    );
                  } else if (songlist[index] == "song 2") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(2)),
                    );
                  } else if (songlist[index] == "song 3") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(3)),
                    );
                  } else if (songlist[index] == "song 4") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(4)),
                    );
                  } else if (songlist[index] == "song 5") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(5)),
                    );
                  } else if (songlist[index] == "song 6") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(6)),
                    );
                  } else if (songlist[index] == "song 7") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(7)),
                    );
                  } else if (songlist[index] == "song 8") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(8)),
                    );
                  } else if (songlist[index] == "song 9") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(9)),
                    );
                  }
                },
                child: Card(
                  child: Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        songlist[index],
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}*/

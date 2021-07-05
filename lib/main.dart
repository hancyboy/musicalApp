import 'package:flutter/material.dart';

import 'package:musical_app/ReaderScreen.dart';

void main() => runApp(MaterialApp(
      title: "Lyrics App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

var songlist = [
  'song 1',
  'song 2',
  'song 3',
  'song 4',
  'song 5',
  'song 6',
  'song 7',
  'song 8',
  'song 9',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lyrics App"),
        centerTitle: true,
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: songlist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.music_note,
                        size: 25,
                      ),
                      SizedBox(
                        height: 30,
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
}

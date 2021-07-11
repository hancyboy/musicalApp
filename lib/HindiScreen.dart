import 'package:flutter/material.dart';
import 'SongList.dart';
import 'ReaderScreen.dart';

class HindiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

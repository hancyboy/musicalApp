import 'package:flutter/material.dart';
import 'EnglishReaderScreen.dart';
import 'EnglishSongList.dart';

class EnglishScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: songList.length,
          itemBuilder: (context, index) {
            ESong esong = songList[index];
            return Card(
              child: ListTile(
                title: Text(
                  esong.title,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  esong.singerName,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReaderScreen(esong)),
                  );
                },
              ),
            );
          }),
    );
  }
}

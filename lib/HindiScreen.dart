import 'package:flutter/material.dart';
import 'HindiSongList.dart';
import 'HindiReaderScreen.dart';

class HindiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: hsongList.length,
          itemBuilder: (context, index) {
            HSong hsong = hsongList[index];
            return Card(
              child: ListTile(
                title: Text(
                  hsong.title,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  hsong.singerName,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HindiReaderScreen(hsong)),
                  );
                },
              ),
            );
          }),
    );
  }
}

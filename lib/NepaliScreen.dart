import 'package:flutter/material.dart';
import 'NepaliSongList.dart';
import 'NepaliReaderScreen.dart';

class NepaliScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: nsongList.length,
          itemBuilder: (context, index) {
            nsongList.sort((a, b) => a.title.compareTo(b.title));
            NSong nsong = nsongList[index];
            return Card(
              child: ListTile(
                title: Text(
                  nsong.title,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  nsong.singerName,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NepaliReaderScreen(nsong)),
                  );
                },
              ),
            );
          }),
    );
  }
}

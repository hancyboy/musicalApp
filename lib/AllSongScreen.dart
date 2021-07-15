import 'package:flutter/material.dart';
import 'AllSongList.dart';
import 'AllSongReaderScreen.dart';

class AllSongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'All songs',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: asongList.length,
          itemBuilder: (context, index) {
            ASong asong = asongList[index];
            return Card(
              child: ListTile(
                title: Text(
                  asong.title,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  asong.singerName,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllSongReaderScreen(asong)),
                  );
                },
              ),
            );
          }),
    );
  }
}

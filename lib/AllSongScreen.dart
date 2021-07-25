import 'package:flutter/material.dart';
import 'AllSongList.dart';
import 'AllSongReaderScreen.dart';
import 'package:flutter/services.dart';

class AllSongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          elevation: 0,
          brightness: Brightness.dark,
          backgroundColor: Colors.purple,
          title: Text(
            'All songs',
          ),
          centerTitle: true,
        ),
      ),
      body: ListView.builder(
          itemCount: asongList.length,
          itemBuilder: (context, index) {
            asongList.sort((a, b) => a.title.compareTo(b.title));
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

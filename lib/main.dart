import 'package:flutter/material.dart';
import 'package:musical_app/AllSongList.dart';
import 'package:musical_app/EnglishScreen.dart';
import 'package:musical_app/HindiScreen.dart';
import 'package:musical_app/NepaliScreen.dart';
import 'package:musical_app/nav-drawer.dart';
import 'package:musical_app/HomeScreen.dart';
import 'AllSongReaderScreen.dart';

void main() => runApp(MaterialApp(
      title: "Lyrics App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    ));

Color primaryColor = Colors.purple;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Container(
            color: Colors.purple,
            child: Center(child: Text('Music App')),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: AsongSearch());
                },
                icon: Icon(Icons.search))
          ],
          bottom: TabBar(
              isScrollable: true,
              indicatorWeight: 4.5,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: 'Home',
                ),
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
            HomeScreen(),
            EnglishScreen(),
            HindiScreen(),
            NepaliScreen(),
          ],
        ),
      ),
    );
  }
}

class AsongSearch extends SearchDelegate<ASong> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        var result = ASong(title: "", singerName: "");
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final mylist = asongList
        .where((p) => (p.title.toLowerCase()).startsWith(query.toLowerCase()))
        .toList();
    return ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context, index) {
          mylist.sort((a, b) => a.title.compareTo(b.title));
          final ASong listitem = mylist[index];
          return Card(
              child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  listitem.title,
                ),
                Text(
                  listitem.singerName,
                  style: TextStyle(color: Colors.red, fontSize: 13),
                ),
              ],
            ),
            leading: Icon(Icons.music_note),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllSongReaderScreen(listitem)),
              );
            },
          ));
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? asongList
        : asongList
            .where(
                (p) => (p.title.toLowerCase()).startsWith(query.toLowerCase()))
            .toList();
    return mylist.isEmpty
        ? Center(
            child:
                Text('No result found!', style: TextStyle(color: Colors.red)))
        : ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              mylist.sort((a, b) => a.title.compareTo(b.title));
              final ASong listitem = mylist[index];
              return Card(
                  child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      listitem.title,
                    ),
                    Text(
                      listitem.singerName,
                      style: TextStyle(color: Colors.red, fontSize: 13),
                    ),
                  ],
                ),
                leading: Icon(Icons.music_note),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllSongReaderScreen(listitem)),
                  );
                },
              ));
            });
  }
}

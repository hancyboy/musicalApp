import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:musical_app/SongList.dart';

late WebViewController _controller;

class ReaderScreen extends StatelessWidget {
  final Song song;
  ReaderScreen(this.song);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(song.title),
          centerTitle: true,
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (song.title == 'Perfect') _loadhtmlsong1();

              if (song.title == 'Behos') _loadhtmlsong2();

              if (song.title == 'Love me') _loadhtmlsong3();

              if (song.title == 'Sathi') _loadhtmlsong4();

              if (song.title == 'Budi') _loadhtmlsong5();

              if (song.title == 'Photography') _loadhtmlsong6();

              if (song.title == 'Happier') _loadhtmlsong7();

              if (song.title == 'Namo Namo') _loadhtmlsong8();

              if (song.title == 'Humdard') _loadhtmlsong9();
            }));
  }
}

_loadhtmlsong1() async {
  String fileText = await rootBundle.loadString("assets/song1.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong2() async {
  String fileText = await rootBundle.loadString("assets/song2.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong3() async {
  String fileText = await rootBundle.loadString("assets/song3.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong4() async {
  String fileText = await rootBundle.loadString("assets/song4.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong5() async {
  String fileText = await rootBundle.loadString("assets/song5.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong6() async {
  String fileText = await rootBundle.loadString("assets/song6.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong7() async {
  String fileText = await rootBundle.loadString("assets/song7.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong8() async {
  String fileText = await rootBundle.loadString("assets/song8.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong9() async {
  String fileText = await rootBundle.loadString("assets/song9.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}


/*class ReaderScreen extends StatefulWidget {
  final Song song;
  ReaderScreen(this.song);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

late WebViewController _controller;

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    var song;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB4161B),
        title: Text(song.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              song.description,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),

      body: WebView(
          initialUrl: 'about:blank',
          onWebViewCreated: (WebViewController webviewController) {
            _controller = webviewController;
            if (widget.songID == 1) _loadhtmlsong1();

            if (widget.songID == 2) _loadhtmlsong2();

            if (widget.songID == 3) _loadhtmlsong3();

            if (widget.songID == 4) _loadhtmlsong4();

            if (widget.songID == 5) _loadhtmlsong5();

            if (widget.songID == 6) _loadhtmlsong6();

            if (widget.songID == 7) _loadhtmlsong7();

            if (widget.songID == 8) _loadhtmlsong8();

            if (widget.songID == 9) _loadhtmlsong9();
          }),
    );
  }
}

_loadhtmlsong1() async {
  String fileText = await rootBundle.loadString("assets/song1.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong2() async {
  String fileText = await rootBundle.loadString("assets/song2.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong3() async {
  String fileText = await rootBundle.loadString("assets/song3.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong4() async {
  String fileText = await rootBundle.loadString("assets/song4.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong5() async {
  String fileText = await rootBundle.loadString("assets/song5.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong6() async {
  String fileText = await rootBundle.loadString("assets/song6.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong7() async {
  String fileText = await rootBundle.loadString("assets/song7.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong8() async {
  String fileText = await rootBundle.loadString("assets/song8.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsong9() async {
  String fileText = await rootBundle.loadString("assets/song9.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}*/

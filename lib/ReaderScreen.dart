import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  final int songID;
  ReaderScreen(this.songID);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

late WebViewController _controller;

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB4161B),
        title: Text('song' + widget.songID.toString()),
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
}

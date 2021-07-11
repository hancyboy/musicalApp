import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'NepaliSongList.dart';

late WebViewController _controller;

class ReaderScreen extends StatelessWidget {
  final NSong nsong;
  ReaderScreen(this.nsong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(nsong.title),
          centerTitle: true,
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (nsong.title == 'Perfect') _loadhtmlperfect();

              if (nsong.title == 'Love me') _loadhtmlloveme();

              if (nsong.title == 'Photography') _loadhtmlphotography();

              if (nsong.title == 'Happier') _loadhtmlhappier();

              if (nsong.title == 'Friends') _loadhtmlfriends();
            }));
  }
}

_loadhtmlperfect() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/perfect.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlloveme() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/love me.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlphotography() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/photography.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlhappier() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/happier.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlfriends() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/friends.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

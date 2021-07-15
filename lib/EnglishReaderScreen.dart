import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:musical_app/EnglishSongList.dart';

late WebViewController _controller;

class EnglishReaderScreen extends StatelessWidget {
  final ESong esong;
  EnglishReaderScreen(this.esong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(esong.title),
          centerTitle: true,
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (esong.title == 'Perfect') _loadhtmlperfect();

              if (esong.title == 'Love Me') _loadhtmlloveMe();

              if (esong.title == 'Photograph') _loadhtmlphotograph();

              if (esong.title == 'Happier') _loadhtmlhappier();

              if (esong.title == 'Friends') _loadhtmlfriends();
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

_loadhtmlloveMe() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/loveMe.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlphotograph() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/photograph.html");
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

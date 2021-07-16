import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'HindiSongList.dart';

late WebViewController _controller;

class HindiReaderScreen extends StatelessWidget {
  final HSong hsong;
  HindiReaderScreen(this.hsong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(hsong.title),
          centerTitle: true,
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (hsong.title == 'Channa Mereya') _loadhtmlchannaMereya();

              if (hsong.title == 'Dil ka Dariya') _loadhtmldilKaDariya();

              if (hsong.title == 'Kabira') _loadhtmlkabira();

              if (hsong.title == 'Namo Namo') _loadhtmlnamoNamo();

              if (hsong.title == 'Humdard') _loadhtmlhumdard();
            }));
  }
}

_loadhtmlchannaMereya() async {
  String fileText =
      await rootBundle.loadString("assets/hindisong/channaMereya.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmldilKaDariya() async {
  String fileText =
      await rootBundle.loadString("assets/hindisong/dilKaDariya.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlkabira() async {
  String fileText = await rootBundle.loadString("assets/hindisong/kabira.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlhumdard() async {
  String fileText =
      await rootBundle.loadString("assets/hindisong/humdard.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlnamoNamo() async {
  String fileText =
      await rootBundle.loadString("assets/hindisong/namoNamo.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'NepaliSongList.dart';

late WebViewController _controller;

class NepaliReaderScreen extends StatelessWidget {
  final NSong nsong;
  NepaliReaderScreen(this.nsong);

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
              if (nsong.title == 'Behos') _loadhtmlbehos();

              if (nsong.title == 'Budi') _loadhtmlbudi();

              if (nsong.title == 'Sathi') _loadhtmlsathi();

              if (nsong.title == 'Lajayera') _loadhtmllajayera();

              if (nsong.title == 'Teenpatey') _loadhtmlteenpatey();
            }));
  }
}

_loadhtmlbehos() async {
  String fileText = await rootBundle.loadString("assets/nepalisong/behos.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlbudi() async {
  String fileText = await rootBundle.loadString("assets/nepalisong/budi.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsathi() async {
  String fileText = await rootBundle.loadString("assets/nepalisong/sathi.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmllajayera() async {
  String fileText =
      await rootBundle.loadString("assets/nepalisong/lajayera.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlteenpatey() async {
  String fileText =
      await rootBundle.loadString("assets/nepalisong/teenpatey.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

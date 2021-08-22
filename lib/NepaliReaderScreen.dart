import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'NepaliSongList.dart';
import 'package:flutter/services.dart';

late WebViewController _controller;

class NepaliReaderScreen extends StatelessWidget {
  final NSong nsong;
  NepaliReaderScreen(this.nsong);

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
              title: Text(nsong.title),
              centerTitle: true,
            )),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              if (nsong.title == 'Behos') _loadhtmlbehos();

              if (nsong.title == 'Budi') _loadhtmlbudi();

              if (nsong.title == 'Sathi') _loadhtmlsathi();

              if (nsong.title == 'Lajayera') _loadhtmllajayera();

              if (nsong.title == 'Teenpatey') _loadhtmlteenpatey();

              if (nsong.title == 'Aama') _loadhtmlaama();

              if (nsong.title == 'Hataaridai Bataasidai') _loadhtmlkataKata();

              if (nsong.title == 'Maya') _loadhtmlmaya();

              if (nsong.title == 'Samhaalincha Kahile Man')
                _loadhtmlsamhalinxa();

              if (nsong.title == 'Ko Hou Timi') _loadhtmlkoHouTimi();
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

_loadhtmlaama() async {
  String fileText = await rootBundle.loadString("assets/nepalisong/aama.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlkataKata() async {
  String fileText =
      await rootBundle.loadString("assets/nepalisong/kataKata.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlmaya() async {
  String fileText = await rootBundle.loadString("assets/nepalisong/maya.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlsamhalinxa() async {
  String fileText =
      await rootBundle.loadString("assets/nepalisong/samhalinxa.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlkoHouTimi() async {
  String fileText =
      await rootBundle.loadString("assets/nepalisong/koHouTimi.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

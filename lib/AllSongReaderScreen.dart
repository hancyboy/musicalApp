import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'AllSongList.dart';
import 'package:flutter/services.dart';

late WebViewController _controller;

class AllSongReaderScreen extends StatelessWidget {
  final ASong asong;
  AllSongReaderScreen(this.asong);

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
            title: Text(asong.title),
            centerTitle: true,
          ),
        ),
        body: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webviewController) {
              _controller = webviewController;
              //English Song
              if (asong.title == 'Perfect') _loadhtmlperfect();
              if (asong.title == 'Love Me') _loadhtmlloveMe();
              if (asong.title == 'Photograph') _loadhtmlphotograph();
              if (asong.title == 'Happier') _loadhtmlhappier();
              if (asong.title == 'Friends') _loadhtmlfriends();
              if (asong.title == 'Closer') _loadhtmlcloser();
              if (asong.title == 'Roar') _loadhtmlroar();
              if (asong.title == 'Treat you better') _loadhtmltreatYou();
              if (asong.title == "We don't talk anymore") _loadhtmlweDontTalk();
              if (asong.title == 'You are the reason')
                _loadhtmlyouAreTheReason();

              //Hindi songs
              if (asong.title == 'Channa Mereya') _loadhtmlchannaMereya();
              if (asong.title == 'Dil ka Dariya') _loadhtmldilKaDariya();
              if (asong.title == 'Kabira') _loadhtmlkabira();
              if (asong.title == 'Namo Namo') _loadhtmlnamoNamo();
              if (asong.title == 'Humdard') _loadhtmlhumdard();

              //Nepali songs
              if (asong.title == 'Behos') _loadhtmlbehos();
              if (asong.title == 'Budi') _loadhtmlbudi();
              if (asong.title == 'Sathi') _loadhtmlsathi();
              if (asong.title == 'Lajayera') _loadhtmllajayera();
              if (asong.title == 'Teenpatey') _loadhtmlteenpatey();
            }));
  }
}

//English song
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

_loadhtmlcloser() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/closer.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlroar() async {
  String fileText = await rootBundle.loadString("assets/englishsong/roar.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmltreatYou() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/treatYou.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlweDontTalk() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/weDontTalk.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadhtmlyouAreTheReason() async {
  String fileText =
      await rootBundle.loadString("assets/englishsong/youAreTheReason.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

//Hindi songs
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

//Nepali songs
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

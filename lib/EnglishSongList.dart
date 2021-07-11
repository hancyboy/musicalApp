/*import 'package:flutter/material.dart';*/

class ESong {
  String title;
  String singerName;

  ESong({
    required this.title,
    required this.singerName,
  });
}

List<ESong> songList = [
  ESong(title: 'Perfect', singerName: 'Annie Marie'),
  ESong(title: 'Love Me', singerName: 'Ellie Goulding'),
  ESong(title: 'Photograph', singerName: 'Ed Sheeran'),
  ESong(title: 'Happier', singerName: 'Ed Sheeran'),
  ESong(title: 'Friends', singerName: 'Annie Marie'),
];

/*import 'package:flutter/material.dart';*/

class Song {
  String title;
  String singerName;
  String description;

  Song({
    required this.title,
    required this.singerName,
    required this.description,
  });
}

List<Song> songList = [
  Song(
      title: 'Perfect',
      singerName: 'Annie marie',
      description: 'This is a song by Annie marie'),
  Song(
      title: 'Behos',
      singerName: 'Sushant Kc',
      description: 'This is a song by Sushant Kc'),
  Song(
      title: 'Love me',
      singerName: 'Ellie Goulding',
      description: 'This is a song by Ellie Goulding'),
  Song(
      title: 'Sathi',
      singerName: 'Sushant Kc',
      description: 'This is a song by Sushant Kc'),
  Song(
      title: 'Budi', singerName: '5:55', description: 'This is a song by 5:55'),
  Song(
      title: 'Photography',
      singerName: 'Ed Sheeran',
      description: 'This is a song by Ed Sheeran'),
  Song(
      title: 'Happier',
      singerName: 'Ed Sheeran',
      description: 'This is a song by Ed Sheeran'),
  Song(
      title: 'Namo Namo',
      singerName: 'Kedarnath',
      description: 'This is a song by Kedarnath'),
  Song(
      title: 'Humdard',
      singerName: 'Arjit Singh',
      description: 'This is a song by Arjit Singh'),
];

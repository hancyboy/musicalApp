class ASong {
  String title;
  String singerName;

  ASong({
    required this.title,
    required this.singerName,
  });
}

List<ASong> asongList = [
  //English songs
  ASong(title: 'Perfect', singerName: 'Annie Marie'),
  ASong(title: 'Love Me', singerName: 'Ellie Goulding'),
  ASong(title: 'Photograph', singerName: 'Ed Sheeran'),
  ASong(title: 'Happier', singerName: 'Ed Sheeran'),
  ASong(title: 'Friends', singerName: 'Annie Marie'),

  //Hindi songs
  ASong(title: 'Channa Mereya', singerName: 'Arjit Singh'),
  ASong(title: 'Dil ka Dariya', singerName: 'Arjit Singh'),
  ASong(title: 'Kabira', singerName: 'Rekha Bhardwaj, Tochi Raina'),
  ASong(title: 'Namo Namo', singerName: 'Kedarnath'),
  ASong(title: 'Humdard', singerName: 'Arjit Singh'),

  //Nepali songs
  ASong(title: 'Behos', singerName: 'Sushant Kc'),
  ASong(title: 'Sathi', singerName: 'Sushant Kc'),
  ASong(title: 'Budi', singerName: '5:55'),
  ASong(title: 'Lajayera', singerName: 'Sujan Chapagain'),
  ASong(title: 'Teenpatey', singerName: 'Sujan chapagain, Bidhya Tiwari'),
];

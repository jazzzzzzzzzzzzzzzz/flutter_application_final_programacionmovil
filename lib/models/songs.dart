class SongModel {
  final String? idSong, singer, title, songUrl, image, lyric;
  final List<String>? likes;

  SongModel(
      {this.idSong,
      this.singer,
      this.title,
      this.songUrl,
      this.image,
      this.lyric,
      this.likes});
}

List<SongModel> listSongs = [
  SongModel(
    idSong: 'id_song1',
    singer: 'Halsey',
    title: 'Without me',
    songUrl: 'Without me.mp3',
    image: 'halseyy.jpg',
    lyric: 'Without me.lrc',
    likes: [
      'user1',
      'user2',
      'user3',
      'user4',
    ],
  ),
  SongModel(
    idSong: 'id_song2',
    singer: 'Dua Lipa',
    title: 'New Rules',
    songUrl: 'Dua Lipa - New Rules.mp3',
    image: 'dualipaa.jpg',
    lyric: 'New Rules.lrc',
    likes: [
      'user1',
      'user2',
      'user3',
      'user4',
    ],
  ),
  SongModel(
    idSong: 'id_song3',
    singer: 'Ariana Grande',
    title: '7 Rings',
    songUrl: 'Ariana Grande - 7 rings.mp3',
    image: 'arianagrandee.jpg',
    lyric: '7 rings.lrc',
    likes: [
      'user1',
      'user2',
      'user3',
      'user4',
    ],
  ),
  SongModel(
    idSong: 'id_song4',
    singer: 'Shawn Mendes',
    title: 'Theres Nothing Holdin',
    songUrl: 'Shawn Mendes tema.mp3',
    image: 'shawnn.jpg',
    lyric: 'Shawn Mendes temas.lrc',
    likes: [
      'user1',
      'user2',
      'user3',
      'user4',
    ],
  ),
  SongModel(
    idSong: 'id_song5',
    singer: 'Charlie Puth',
    title: 'Light switch',
    songUrl: 'Charlie Puth - Light Switch.mp3',
    image: 'charliee.jpg',
    lyric: 'Light switch.lrc',
    likes: [
      'user1',
      'user2',
      'user3',
      'user4',
    ],
  ),
];

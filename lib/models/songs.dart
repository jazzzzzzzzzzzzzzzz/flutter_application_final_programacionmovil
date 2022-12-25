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
      singer: 'Adele',
      title: 'Easy on me',
      songUrl: 'Adele-Easy')
];

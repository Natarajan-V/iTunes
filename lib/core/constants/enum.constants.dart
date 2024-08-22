enum NotificationRoute { sample }

enum ItunesCategory {
  movie(value: 'Food'),
  podcast(value: 'Travel'),
  music(value: 'Entertainment'),
  musicVideo(value: 'Savings'),
  audiobook(value: 'Shopping'),
  shortFilm(value: 'shortFilm'),
  tvShow(value: 'tvShow'),
  software(value: 'software'),
  ebook(value: 'ebook');

  final String value;

  const ItunesCategory({required this.value});

  static List<ItunesCategory> _category = [
    movie,
    podcast,
    music,
    musicVideo,
    audiobook,
    shortFilm,
    tvShow,
    software,
    ebook,
  ];

  static List<ItunesCategory> get category => _category;
}

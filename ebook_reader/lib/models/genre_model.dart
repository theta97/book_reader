class Genre {
  final int genreId;
  final String genre1;

  Genre({required this.genreId, required this.genre1});

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      genreId: json['genreId'],
      genre1: json['genre1'],
    );
  }
}
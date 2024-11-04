class FilmDetails {
  final String filmId;
  final String title;
  final String director;
  final String producer;
  final String screenwriter;
  final String category;
  final String language;
  final String duration;

  final String releaseYear;

  final String cast;
  final String productionCompany;
  final String poster;
  final String comments;

  FilmDetails({
    required this.filmId,
    required this.title,
    required this.director,
    required this.producer,
    required this.screenwriter,
    required this.category,
    required this.language,
    required this.duration,
    required this.releaseYear,
    required this.cast,
    required this.productionCompany,
    required this.poster,
    required this.comments,
  });

  factory FilmDetails.fromJson(Map<String, dynamic> json) {
    return FilmDetails(
      filmId: json['film_id'],
      title: json['title'],
      director: json['director'],
      producer: json['producer'],
      screenwriter: json['screenwriter'],
      category: json['category'],
      language: json['language'],
      duration: json['duration'],
      releaseYear: json['release_year'],
      cast: json['cast'],
      productionCompany: json['production_company'],
      poster: json['poster'],
      comments: json['comments'],
    );
  }
}

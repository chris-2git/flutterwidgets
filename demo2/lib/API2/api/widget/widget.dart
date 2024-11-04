import 'package:flutter/material.dart';

class Filmsdetails extends StatefulWidget {
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
  const Filmsdetails({
    super.key,
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

  @override
  State<Filmsdetails> createState() => _FilmsdetailsState();
}

class _FilmsdetailsState extends State<Filmsdetails> {
  @override
  Widget build(BuildContext context) {
    return ();
  }
}

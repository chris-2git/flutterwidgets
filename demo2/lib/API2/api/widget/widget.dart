import 'package:flutter/material.dart';

class Filmsdetails extends StatefulWidget {
  final String filmId;
  final String title;
  final String director;
  final String producer;
  final String screenwriter;
  final String category;
  final String language;

  final String releaseYear;

  final String poster;

  const Filmsdetails({
    super.key,
    required this.filmId,
    required this.title,
    required this.director,
    required this.producer,
    required this.screenwriter,
    required this.category,
    required this.language,
    required this.releaseYear,
    required this.poster,
  });

  @override
  State<Filmsdetails> createState() => _FilmsdetailsState();
}

class _FilmsdetailsState extends State<Filmsdetails> {
  @override
  Widget build(BuildContext context) {
    final Style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width * 0.40,
            height: size.height * 0.27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              image: DecorationImage(
                  image: NetworkImage(
                    widget.poster,
                  ),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(offset: Offset(0, 6), blurRadius: 5),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            alignment: Alignment.bottomLeft,
          ),
        ),
        Container(
          width: size.width * 0.40,
          height: size.height * 0.14,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 145, 185, 204),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(offset: Offset(0, 5), blurRadius: 10),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Director: ${widget.director}",
                  style: Style,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Category:${widget.category}',
                  style: Style,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'ReleaseYear:${widget.releaseYear}',
                  style: Style,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

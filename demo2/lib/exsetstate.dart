import 'package:flutter/material.dart';

class Exset extends StatefulWidget {
  const Exset({super.key});

  @override
  State<Exset> createState() => _ExsetState();
}

class _ExsetState extends State<Exset> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Colour Magic',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                isFav ? Icons.favorite : Icons.favorite_border_outlined,
                color: isFav ? Colors.red : Colors.black,
                size: 80,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              child: Text(
                'Click',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

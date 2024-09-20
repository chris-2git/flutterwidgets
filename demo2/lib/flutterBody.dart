import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Chri"s App',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Flutter ',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'App',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'By',
            style: TextStyle(color: Colors.black),
          ),
          Text('Christy'),
          Text('Joshua'),
          Text('Varghese'),
        ],
      ),
    );
  }
}

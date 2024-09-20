import 'package:flutter/material.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  State<My> createState() => _My();
}

class _My extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('flutter demo app'),
      backgroundColor: Colors.deepOrange,
      actions: [
        Icon(
          Icons.search_off,
          color: Colors.black,
        ),
        Icon(
          Icons.camera,
          color: Colors.black,
        ),
        Icon(
          Icons.call,
          color: Colors.black,
        )
      ],
    ));
  }
}

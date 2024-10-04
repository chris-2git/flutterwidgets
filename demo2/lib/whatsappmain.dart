import 'package:flutter/material.dart';

class Wha extends StatefulWidget {
  const Wha({super.key});

  @override
  State<Wha> createState() => _WhaState();
}

class _WhaState extends State<Wha> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

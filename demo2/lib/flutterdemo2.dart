import 'package:flutter/material.dart';

class chris extends StatefulWidget {
  const chris({super.key});

  @override
  State<chris> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<chris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'Flutter App Bar',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.print,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.camera,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

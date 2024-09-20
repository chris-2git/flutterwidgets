import 'package:flutter/material.dart';

class Boxshape extends StatefulWidget {
  const Boxshape({super.key});

  @override
  State<Boxshape> createState() => _BoxshapeState();
}

class _BoxshapeState extends State<Boxshape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                gradient: LinearGradient(
                    colors: [Colors.cyan, Colors.green, Colors.blue]),
              ),
              child: Center(
                child: Column(
                  children: [Text('Chris'), Text('Leo')],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

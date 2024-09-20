import 'package:flutter/material.dart';

class pad extends StatefulWidget {
  const pad({super.key});

  @override
  State<pad> createState() => _padState();
}

class _padState extends State<pad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 50, right: 50),
                  child: Text('flutter'),
                ),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 50, right: 50),
                  child: Text('flutter'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.green,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text('flutter'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:demo2/container2task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instahome extends StatefulWidget {
  const Instahome({super.key});

  @override
  State<Instahome> createState() => _InstahomeState();
}

class _InstahomeState extends State<Instahome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile1.jpg'),
              ),
              Positioned(
                left: 40,
                top: 40,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 9,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 30,
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemBuilder: (context, index) {
                return Container(
                  width: 233,
                  height: 233,
                  color: Colors.blue,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

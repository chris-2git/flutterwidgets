import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addcartfruits extends StatefulWidget {
  const Addcartfruits({super.key});

  @override
  State<Addcartfruits> createState() => _AddcartfruitsState();
}

class _AddcartfruitsState extends State<Addcartfruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 400,
            height: 500,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

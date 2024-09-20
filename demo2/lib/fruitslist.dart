import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fruit extends StatefulWidget {
  const Fruit({super.key});

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'product List',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            size: 20,
          ),
        ],
      ),
    );
  }
}

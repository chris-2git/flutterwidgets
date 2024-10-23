import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchott extends StatefulWidget {
  const Searchott({super.key});

  @override
  State<Searchott> createState() => _SearchottState();
}

class _SearchottState extends State<Searchott> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: '',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

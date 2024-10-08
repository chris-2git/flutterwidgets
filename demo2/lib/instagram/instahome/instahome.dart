import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instahome extends StatefulWidget {
  const Instahome({super.key});

  @override
  State<Instahome> createState() => _InstahomeState();
}

class _InstahomeState extends State<Instahome> {
  List<String> img = [
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.07,
            child: ListView.builder(
              itemCount: img.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  backgroundImage: AssetImage(
                    img[index],
                  ),
                  radius: 30,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

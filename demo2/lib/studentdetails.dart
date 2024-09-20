import 'package:flutter/material.dart';

class student extends StatefulWidget {
  const student({super.key});

  @override
  State<student> createState() => _studentState();
}

class _studentState extends State<student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Student Details',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'Christ',
              ),
              Text('Mary'),
              Text('Ronaldo'),
              Text('Leo'),
              Text('pepe'),
              Text('Crtino'),
              Text('Franco'),
              Text('mone'),
              Text('Emy'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Age',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text('12'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
              Text('7'),
              Text('8'),
              Text('9'),
              Text('10')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Place',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text('TVM'),
              Text('PTA'),
              Text('EKM'),
              Text('KSD'),
              Text('KLM'),
              Text('MLP'),
              Text('KNR'),
              Text('KTM'),
              Text('THR'),
            ],
          )
        ],
      ),
    );
  }
}

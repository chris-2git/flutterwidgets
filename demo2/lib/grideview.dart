import 'package:demo2/vegetables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridevi extends StatefulWidget {
  const Gridevi({super.key});

  @override
  State<Gridevi> createState() => _GrideviState();
}

class _GrideviState extends State<Gridevi> {
  List<String> price = [
    '100',
    '200',
    '300',
    '400',
    '500',
    '600',
    '700',
    '800',
    '900',
    '1000'
  ];
  List<String> names = [
    'Apple',
    'Mango',
    'Banana',
    'kiwi',
    'Grapes',
    'watermelon',
    'Papaya',
    'Orange',
    'cocount',
    'Brinjal'
  ];
  List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.green,
    Colors.blue,
    Colors.green,
    Colors.blue,
    Colors.green,
    Colors.blue,
    Colors.green,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Fruits Shows',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.cyan,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => vege()));
            },
            child: Text(
              'Next Page',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 6),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: colors[index],
                boxShadow: [
                  BoxShadow(blurRadius: 10),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      names[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/appe.jpg',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(7, 176, 255, 1),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              'Buy :${price[index]}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

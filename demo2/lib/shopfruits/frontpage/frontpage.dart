import 'dart:io';

import 'package:demo2/shopfruits/lemonpage/lemonpage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Frontfruits extends StatefulWidget {
  const Frontfruits({super.key});

  @override
  State<Frontfruits> createState() => _FrontfruitsState();
}

class _FrontfruitsState extends State<Frontfruits> {
  List<String> img = [
    'assets/lemon.png',
    'assets/appe.jpg',
    'assets/banana.jpg.png',
    'assets/kiwi.png',
    'assets/mango.jpg.png',
    'assets/Onion.jpg',
  ];
  List<String> na = [
    'Orange',
    'Apple',
    'Banana',
    'Kiwi',
    'Mango',
    'Onion',
  ];
  List<String> name = [];
  final text = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  final texts = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/profile1.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'William',
                            style: text,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                      suffixIcon: Icon(
                        Icons.transfer_within_a_station_outlined,
                        color: Colors.grey,
                      ),
                      hintText: 'Search',
                      fillColor: Color.fromARGB(255, 245, 237, 237),
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/allfruits2.png',
                      ),
                    ),
                    color: Color.fromARGB(255, 187, 180, 52),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Health starts',
                          style: texts,
                        ),
                        Text(
                          'with eating',
                          style: texts,
                        ),
                        Text(
                          'fruits',
                          style: texts,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 206, 195, 163),
                              image: DecorationImage(
                                image: AssetImage(
                                  img[index],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            na[index],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: text,
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Lemon()));
                },
                child: Container(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 200, 191, 163),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                img[index],
                                scale: 28.90,
                              ),
                              Text(
                                na[index],
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Rs.30.09',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

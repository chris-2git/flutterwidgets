import 'package:flutter/material.dart';

class Listvi extends StatefulWidget {
  const Listvi({super.key});

  @override
  State<Listvi> createState() => _ListviState();
}

class _ListviState extends State<Listvi> {
  List<String> images = [
    'assets/appe.jpg',
    'assets/banana.jpg.png',
    'assets/grapes.jpg.png',
    'assets/mango.jpg.png',
    'assets/kiwi.png'
  ];
  List<String> name = ['Apples', 'Banana', 'Grapes', 'mango', 'kiwi'];
  List<String> kg = ['10', '20', '30', '40', '50'];
  List<String> prize = ['100', '200', '300', '400', '500'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'List of...',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(color: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Image.asset(
                      images[index],
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name :',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Unit :',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'prize :',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              kg[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              prize[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.black),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
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

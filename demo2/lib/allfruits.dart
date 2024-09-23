import 'package:demo2/fruitslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'All products',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'apple',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/appe.jpg',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'price : 200',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Qty : 1',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Grapes',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/grapes.jpg.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'price : 200',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Qty : 1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'banana',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/banana.jpg.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'price : 200',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Qty : 1',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'kiwi',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/kiwi.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, right: 10, left: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'price : 200',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Qty :1',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            Container(
                              width: 85,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 170,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'mango',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/mango.jpg.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 10, left: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'price : 200',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'Qlt : 1',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(children: [
                                  Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 193,
                    height: 170,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Melon',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Image.asset(
                              'assets/watermelon.jpg.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 10, left: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'price :200',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Qlt:2',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 69,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Add to Cart',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fruit()));
                },
                child: Center(
                  child: Text('Next page'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

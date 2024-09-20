import 'package:flutter/material.dart';

class simple extends StatefulWidget {
  const simple({super.key});

  @override
  State<simple> createState() => _simpleState();
}

class _simpleState extends State<simple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Simple Card design',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
              side: BorderSide(color: Colors.white),
            ),
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photo Album',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            Text(
                              'TWICE',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Create',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
              side: BorderSide(color: Colors.white),
            ),
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                          right: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'TWICE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Create',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 30,
            color: Colors.pink,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.accessibility,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: [
                            Text(
                              'Access',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'TWICE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'create',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

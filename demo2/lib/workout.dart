import 'package:flutter/material.dart';

class workout extends StatefulWidget {
  const workout({super.key});

  @override
  State<workout> createState() => _workoutState();
}

class _workoutState extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        toolbarHeight: 65,
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
          size: 25,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 25,
            color: Colors.blue,
            opticalSize: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.video_call,
            size: 28,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.translate_outlined,
            size: 25,
            color: Colors.blue,
          )
        ],
        title: Text(
          'Model Apps',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
              side: BorderSide(
                color: Colors.black,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 10),
                  child: Icon(
                    Icons.wallet,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 15, right: 15, left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.palette,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Colour Palette',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'wallet leo',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.addchart,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Cart',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.video_file,
                              color: Colors.blue,
                              size: 25,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Video',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

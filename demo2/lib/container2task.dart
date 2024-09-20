import 'package:flutter/material.dart';

class contain extends StatefulWidget {
  const contain({super.key});

  @override
  State<contain> createState() => _containState();
}

class _containState extends State<contain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Page',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.notifications_off,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Reminder',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'None',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Camera',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Enabled',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.chat_rounded,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Rounded',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.wifi,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'wi',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'iF',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.book,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Book',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Here',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromARGB(255, 245, 64, 255),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Phone',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Call',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(150, 76, 175, 76),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mail',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'inbox',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add_business_rounded,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Business',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Add',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFFF6200),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.computer,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'windows',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Desktop',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 30, 98),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mic_off,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'mic',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Off',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(43, 192, 73, 0.646),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.post_add_outlined,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'post',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'add',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

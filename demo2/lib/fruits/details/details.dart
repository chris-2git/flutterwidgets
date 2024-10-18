import 'package:demo2/container2task.dart';
import 'package:demo2/fruitslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Frdetails extends StatefulWidget {
  const Frdetails({super.key});

  @override
  State<Frdetails> createState() => _FrdetailsState();
}

class _FrdetailsState extends State<Frdetails> {
  final text = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  final texts = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 86, 18),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => Fruit()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Golden',
                          style: text,
                        ),
                        Text(
                          'Pinaapple',
                          style: text,
                        ),
                        Text('Rs.6.90/ea'),
                      ],
                    ),
                    Image.asset(
                      'assets/pinapple.png',
                      scale: 5.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Choose size',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                          ),
                          Container(
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                          ),
                          Container(
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 239, 219, 219),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '+',
                                  style: texts,
                                ),
                                Text(
                                  '3',
                                  style: texts,
                                ),
                                Text(
                                  '-',
                                  style: texts,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            '11.98',
                            style: texts,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

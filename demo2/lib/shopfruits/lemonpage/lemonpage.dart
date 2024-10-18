import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lemon extends StatefulWidget {
  const Lemon({super.key});

  @override
  State<Lemon> createState() => _LemonState();
}

class _LemonState extends State<Lemon> {
  final text = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/lemon.png',
                scale: 1.0,
              ),
              Text(
                '. . . . .',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 35,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '🔴 100 kcal',
                    style: text,
                  ),
                  Text(
                    '🟡 1.1g.ptn',
                    style: text,
                  ),
                  Text(
                    '🟢 0.6 iron',
                    style: text,
                  ),
                  Text(
                    '🟣 0.06 zinc',
                    style: text,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Lemon',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '4.7(Review 100)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: Text(
                            'rs.15/1kg',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.lock_clock),
                  Text(
                    '10 Min',
                  ),
                  Icon(
                    Icons.delivery_dining_outlined,
                  ),
                  Text('free'),
                  Icon(Icons.map),
                  Text('1.00km'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lemon',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'lemon are a popular citrus fruit konw for their bright yellow color, sour taste,and versititty in cooking and beverages.Here a detailed in the descrpition',
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange,
                ),
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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

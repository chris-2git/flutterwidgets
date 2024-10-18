import 'package:demo2/shopfruits/bottomshop/bottomshope.dart';
import 'package:demo2/shopfruits/frontpage/frontpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shopefruits extends StatefulWidget {
  const Shopefruits({super.key});

  @override
  State<Shopefruits> createState() => _ShopefruitsState();
}

class _ShopefruitsState extends State<Shopefruits> {
  final text = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final texts = TextStyle(
    color: Colors.orange,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  final textes = TextStyle(
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
                'assets/allfruits.png',
              ),
              Text(
                'Order your',
                style: text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Favorites',
                    style: text,
                  ),
                  Text(
                    'Fruits',
                    style: texts,
                  ),
                ],
              ),
              Text(
                'Home delivery and online reservation',
                style: textes,
              ),
              Text(
                'system for Market and Stories',
                style: textes,
              ),
              Text(
                '...',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bottomshope()));
                },
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: text,
                    ),
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

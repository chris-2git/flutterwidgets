import 'package:demo2/welcomepage/category/category.dart';
import 'package:demo2/welcomepage/homepage/home.dart';
import 'package:demo2/welcomepage/profile/profilewel.dart';
import 'package:demo2/welcomepage/shopepage/shop.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Saleshome extends StatefulWidget {
  const Saleshome({super.key});

  @override
  State<Saleshome> createState() => _SaleshomeState();
}

class _SaleshomeState extends State<Saleshome> {
  int _salesIndex = 0;
  static const List<Widget> _salesOptions = <Widget>[
    Homepagesale(),
    Catgeroy(),
    Shopepage(),
    Profilewel(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _salesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _salesOptions.elementAt(_salesIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'Category',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Shop',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'profile')
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _salesIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

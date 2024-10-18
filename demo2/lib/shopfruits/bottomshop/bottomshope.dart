import 'package:demo2/shopfruits/addcart/addcartfruits.dart';
import 'package:demo2/shopfruits/frontpage/frontpage.dart';

import 'package:demo2/shopfruits/mesage/measage.dart';
import 'package:demo2/shopfruits/profile/profilefruits.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomshope extends StatefulWidget {
  const Bottomshope({super.key});

  @override
  State<Bottomshope> createState() => _BottomshopeState();
}

class _BottomshopeState extends State<Bottomshope> {
  int _shopeIndex = 0;
  static const List<Widget> _shopeOptions = <Widget>[
    Frontfruits(),
    Addcartfruits(),
    Measeage(),
    Fruitsprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _shopeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _shopeOptions.elementAt(_shopeIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
                color: Colors.orange,
              ),
              label: '',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                label: ''),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _shopeIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

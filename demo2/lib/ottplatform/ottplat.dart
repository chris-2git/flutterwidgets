import 'package:demo2/ottplatform/historyott/historyott.dart';
import 'package:demo2/ottplatform/homeott/homeott.dart';
import 'package:demo2/ottplatform/profileott/profileott.dart';
import 'package:demo2/ottplatform/searchott/searchott.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ottplatform extends StatefulWidget {
  const Ottplatform({super.key});

  @override
  State<Ottplatform> createState() => _OttplatformState();
}

class _OttplatformState extends State<Ottplatform> {
  int _ottIndex = 0;
  static const List<Widget> _ottOptions = <Widget>[
    Homeott(),
    Searchott(),
    Historyott(),
    profileott(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _ottIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _ottOptions.elementAt(_ottIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'History',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2,
              ),
              label: 'Profile',
              backgroundColor: Colors.grey),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _ottIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: const Color.fromARGB(255, 223, 215, 215),
        backgroundColor: const Color.fromARGB(255, 35, 31, 31),
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 10,
      ),
    );
  }
}

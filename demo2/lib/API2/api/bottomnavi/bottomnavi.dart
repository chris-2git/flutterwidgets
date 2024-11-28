import 'package:demo2/API/design/design.dart';
import 'package:demo2/API2/api/desgin/desgin.dart';
import 'package:demo2/API3/Api/design/design.dart';
import 'package:flutter/material.dart';

class Flimbottom extends StatefulWidget {
  const Flimbottom({super.key});

  @override
  State<Flimbottom> createState() => _FlimbottomState();
}

class _FlimbottomState extends State<Flimbottom> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Flimscreen(),
    GardenScreen(),
    Categoriescreen(),
    Text('jjjj')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule_outlined),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

import 'package:demo2/instagram/Instahome/instahome.dart';
import 'package:demo2/instagram/addpost/addpost.dart';
import 'package:demo2/instagram/likes/likes.dart';
import 'package:demo2/instagram/profile/profile.dart';
import 'package:demo2/instagram/search/search.dart';
import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _instaIndex = 0;
  static const List<Widget> _instaOptions = <Widget>[
    Instahome(),
    Search(),
    Addpost(),
    likesnote(),
    Profileinsta(),
  ];
  void _instaTapped(int Index) {
    setState(() {
      _instaIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _instaOptions.elementAt(_instaIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: 'post',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Likes',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_outlined),
              label: 'profile',
              backgroundColor: Colors.black),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _instaIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        iconSize: 25,
        onTap: _instaTapped,
        elevation: 10,
      ),
    );
  }
}

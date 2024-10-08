import 'dart:js_util';

import 'package:demo2/instagram/Instahome/instahome.dart';
import 'package:demo2/instagram/Llikes/likes.dart';
import 'package:demo2/instagram/addpost/addpost.dart';
import 'package:demo2/instagram/profile/profile.dart';
import 'package:demo2/instagram/search/search.dart';

import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  int _instaIndex = 0;
  static const List<Widget> _instaOptions = <Widget>[
    Instahome(),
    Search(),
    Addpost(),
    Likes(),
    Profile(),
  ];
  void _instaTapped(int Index) {
    setState(() {
      _instaIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
          ),
        ],
      ),
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

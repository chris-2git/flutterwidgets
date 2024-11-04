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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _instaIndex,
        iconSize: 30,
        onTap: _instaTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class What extends StatefulWidget {
  const What({super.key});

  @override
  State<What> createState() => _WhatState();
}

class _WhatState extends State<What> {
  List<String> na = [
    'christy',
    'leo',
    'geevarghese',
    'sajini',
    'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini'
        'christy',
    'leo',
    'geevarghese',
    'sajini',
    'christy',
    'leo',
    'geevarghese',
    'sajini'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.green,
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                na[index],
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text('messages you have reached'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(''),
              ),
              trailing: Text(
                '12.00 am',
                style: TextStyle(color: Colors.black),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 40),
    );
  }
}

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
        title: Text(
          'Leo Apps',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.delete,
            color: Colors.red,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.share,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.person_add),
              SizedBox(
                width: 15,
              ),
              Text(
                'Add Member',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.camera,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Camera',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.edit,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Edit',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Like',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Add',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.alarm,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Alarm',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.save,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Save',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Call',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.map,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Map',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Settings',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}

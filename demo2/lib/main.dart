import 'package:demo2/whatsapp/whatsapppage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Whatsapp());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "FLUTTER",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 180, 33, 243),
        actions: [
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: 45,
          ),
          Icon(
            Icons.video_call,
            color: Colors.white,
          ),
          SizedBox(
            width: 45,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

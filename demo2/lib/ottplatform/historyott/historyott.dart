import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historyott extends StatefulWidget {
  const Historyott({super.key});

  @override
  State<Historyott> createState() => _HistoryottState();
}

class _HistoryottState extends State<Historyott> {
  bool colin = true;
  bool coloin = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colin ? Colors.red : Colors.grey),
                    onPressed: () {
                      setState(() {
                        colin = !colin;
                      });
                    },
                    child: Text(
                      'Watching',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: coloin ? Colors.green : Colors.grey),
                    onPressed: () {
                      coloin = !coloin;
                    },
                    child: Text(
                      'Dowmloaded',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // Container(
                  //   height: size.height * 200,
                  //   child: ListView.builder(
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         width: size.width * 300,
                  //         height: size.height * 200,
                  //         color: Colors.blue,
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

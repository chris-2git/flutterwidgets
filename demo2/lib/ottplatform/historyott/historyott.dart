import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historyott extends StatefulWidget {
  const Historyott({super.key});

  @override
  State<Historyott> createState() => _HistoryottState();
}

class _HistoryottState extends State<Historyott> {
  bool colin = false;
  bool coloin = true;
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        coloin = !coloin;
                        print(coloin);
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: coloin ? Colors.red : Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: coloin
                              ? Border.all(color: Colors.red)
                              : Border.all(color: Colors.white)),
                      child: Center(
                          child: Text(
                        'Watching',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        colin = !colin;
                        print('');
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: colin ? Colors.red : Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: colin
                              ? Border.all(color: Colors.red)
                              : Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          'Downloaded',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

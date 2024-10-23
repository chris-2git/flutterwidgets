import 'package:demo2/ottplatform/historysub/historysub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historyott extends StatefulWidget {
  const Historyott({super.key});

  @override
  State<Historyott> createState() => _HistoryottState();
}

class _HistoryottState extends State<Historyott> {
  List<String> name = [
    'A Quest pice 2',
    'Money heist',
    'The Flash',
    'Furie',
    'Joker',
    'Leo',
  ];
  List<String> img = ['assets/'];
  List<String> time = [];
  List<String> watch = [''];
  List<IconData> icon = [];
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
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Historysub(
                      name: name[index],
                      img: img[index],
                      time: time[index],
                      watch: watch[index],
                      icon: icon[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

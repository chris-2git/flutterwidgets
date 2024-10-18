import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  bool isckick = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isckick = !isckick;
                  });
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: isckick ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: isckick ? Colors.green : Colors.black)),
                  child: Center(
                    child: Text(
                      'onclick',
                      style: TextStyle(
                          color: isckick ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    click = !click;
                  });
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: click ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: click ? Colors.white : Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'click',
                      style: TextStyle(
                        color: click ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

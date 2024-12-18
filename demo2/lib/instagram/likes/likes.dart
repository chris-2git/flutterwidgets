import 'package:flutter/material.dart';

class likesnote extends StatefulWidget {
  const likesnote({super.key});

  @override
  State<likesnote> createState() => _likesnoteState();
}

class _likesnoteState extends State<likesnote> {
  int count = 0;
  bool iscol = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'I will give U my Likes ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 30,
                ),
              ),
              Text(
                count.toString(),
                style: TextStyle(color: Colors.white, fontSize: 90),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(
                  iscol ? Icons.favorite : Icons.favorite_border_outlined,
                  color: iscol ? Colors.red : Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

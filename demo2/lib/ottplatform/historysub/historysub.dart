import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historysub extends StatefulWidget {
  final String img;
  final IconData icon;
  final String name;
  final String time;
  final String watch;

  const Historysub({
    super.key,
    required this.img,
    required this.icon,
    required this.name,
    required this.time,
    required this.watch,
  });

  @override
  State<Historysub> createState() => _HistorysubState();
}

class _HistorysubState extends State<Historysub> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * 0.06,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.img),
            ),
          ),
          child: Center(
            child: Icon(
              widget.icon,
            ),
          ),
        ),
        Container(
          width: size.width * 0.4,
          height: size.height * 0.06,
          child: Column(
            children: [
              Text(
                widget.name,
              ),
              Text(
                widget.time,
              ),
              Text(
                widget.watch,
              ),
            ],
          ),
        )
      ],
    );
  }
}

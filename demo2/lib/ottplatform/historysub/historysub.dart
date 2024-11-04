import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historysub extends StatefulWidget {
  final String img;
  final IconData icon;
  final String name;
  final String time;
  final String watch;
  final IconData arrow;
  const Historysub({
    super.key,
    required this.img,
    required this.icon,
    required this.name,
    required this.time,
    required this.watch,
    required this.arrow,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height * 0.12,
            width: size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.img),
              ),
            ),
            child: Center(
              child: Icon(
                widget.icon,
              ),
            ),
          ),
        ),
        Container(
          height: size.height * 0.14,
          width: size.width * 0.4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                Text(
                  widget.watch,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Icon(
          widget.arrow,
          color: Colors.grey,
        ),
      ],
    );
  }
}

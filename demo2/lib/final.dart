import 'package:flutter/material.dart';

class Profilecontainer extends StatefulWidget {
  final IconData leadingicon;
  final String name;

  final Color colo;
  final IconData traling;

  const Profilecontainer({
    super.key,
    required this.leadingicon,
    required this.name,
    required this.colo,
    required this.traling,
  });

  @override
  State<Profilecontainer> createState() => _ProfilecontainerState();
}

class _ProfilecontainerState extends State<Profilecontainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 50, 50, 50),
        ),
        child: ListTile(
          leading: Icon(
            widget.leadingicon,
            color: Colors.white,
          ),
          title: Text(
            widget.name,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            widget.traling, color: Colors.black,
            //this applyed in ottplatform in profile
          ),
        ),
      ),
    );
  }
}

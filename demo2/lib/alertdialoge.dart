import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialoge extends StatefulWidget {
  const AlertDialoge({super.key});

  @override
  State<AlertDialoge> createState() => _AlertDialogeState();
}

class _AlertDialogeState extends State<AlertDialoge> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Did you exit'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: Text('yes'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: Text('No'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

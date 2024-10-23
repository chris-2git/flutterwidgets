import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sankerwid extends StatefulWidget {
  const sankerwid({super.key});

  @override
  State<sankerwid> createState() => _sankerwidState();
}

class _sankerwidState extends State<sankerwid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Leo'),
              accountEmail: Text('LeoJohn@gmail.com'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.deepOrange,
                      content: Text('Login scuccesfully'),
                      duration: Duration(seconds: 5),
                    ),
                  );
                },
                child: Text('Onclick'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

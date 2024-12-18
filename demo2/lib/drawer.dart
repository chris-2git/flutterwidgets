import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerwid extends StatefulWidget {
  const Drawerwid({super.key});

  @override
  State<Drawerwid> createState() => _DrawerwidState();
}

class _DrawerwidState extends State<Drawerwid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('christy'),
              accountEmail: Text('Christy.com'),
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile1.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
    );
  }
}

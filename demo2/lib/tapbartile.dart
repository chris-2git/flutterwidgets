import 'package:flutter/material.dart';

class Tap extends StatefulWidget {
  const Tap({super.key});

  @override
  State<Tap> createState() => _TapState();
}

class _TapState extends State<Tap> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
          bottom: TabBar(tabs: [
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ]),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,
            ),
            title: Text('Athira'),
            subtitle: Text('Hi Good Morining !'),
            trailing: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
            ),
          );
        }),
      ),
    );
  }
}

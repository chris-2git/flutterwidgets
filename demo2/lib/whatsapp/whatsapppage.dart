import 'package:demo2/whatsapp/call/callspage.dart';
import 'package:demo2/whatsapp/chat/chatpage.dart';
import 'package:demo2/whatsapp/status/statuspage.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 37, 79, 29),
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Icon(Icons.qr_code, color: Colors.white),
            SizedBox(
              width: size.width * 0.05,
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chat(),
            Status(),
            calls(),
          ],
        ),
      ),
    );
  }
}

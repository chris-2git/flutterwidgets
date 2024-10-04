import 'package:flutter/material.dart';

class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SingleChildScrollView;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favourites',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.favorite),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Text(
                  'Add Favourite Calls',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Names',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(Icons.arrow_outward_rounded),
                        Text(
                          '5 am',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.call, color: Colors.red),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instahome extends StatefulWidget {
  const Instahome({super.key});

  @override
  State<Instahome> createState() => _InstahomeState();
}

class _InstahomeState extends State<Instahome> {
  List<String> img = [
    'assets/passionchristpic.jpeg',
    'assets/money hiestpic.jpg',
    'assets/leopic.jpg',
    'assets/theflashpic.jpg',
    'assets/vikingspic.jpg',
    'assets/cidmoosapic.jpeg',
    'assets/deadpoolpic.jpeg',
    'assets/aveshampic.jpeg',
    'assets/bougvillapic.jpeg',
  ];
  bool isFav = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/profile1.jpg',
                        ),
                      ),
                      Text('Your story'),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  img[index],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/profile1.jpg'),
                              ),
                              title: Text(
                                'c.j.v._',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_outlined),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    img[index],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFav = !isFav;
                                      count++;
                                    });
                                    Text(count.toString());
                                  },
                                  icon: Icon(
                                      isFav
                                          ? Icons.favorite_border_outlined
                                          : Icons.favorite,
                                      color: isFav ? Colors.black : Colors.red),
                                ),
                                Text(
                                  count.toString(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.comment_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.share_location,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.45,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.save_alt_outlined),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

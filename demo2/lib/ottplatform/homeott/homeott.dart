import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homeott extends StatefulWidget {
  const Homeott({super.key});

  @override
  State<Homeott> createState() => _HomeottState();
}

class _HomeottState extends State<Homeott> {
  List<String> img = [
    'assets/passionchristpic.jpeg',
    'assets/mulanpic.jpg',
    'assets/money.jpg',
    'assets/leopic.jpeg',
    'assets/harrypic.jpg'
  ];
  List<String> name = [
    'Passion Of Christ',
    'Mulan',
    'Money Heist',
    'Leo',
    'Harry Potter',
  ];
  List<String> na = [
    'History',
    'Acton comdey',
    'Motivation',
    'Entertainment',
    'Scific',
  ];
  List<String> imgs = [
    'assets/leopic.jpeg',
    'assets/theflashpic.jpg',
    'assets/vikingspic.jpg',
    'assets/money.jpg',
    'assets/cidmoosapic.jpeg',
    'assets/deadpoolpic.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: size.height * 0.30,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            img[index],
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name[index],
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                na[index],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.60,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latests Movies',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.300,
                          height: size.height * 0.200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                imgs[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6 seasons',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Vikings',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                '10 episodes',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: size.width * 0.30,
                              ),
                              Text(
                                '⭐ 4.3',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

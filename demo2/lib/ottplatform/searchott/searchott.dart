import 'package:demo2/container2task.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Searchott extends StatefulWidget {
  const Searchott({super.key});

  @override
  State<Searchott> createState() => _SearchottState();
}

class _SearchottState extends State<Searchott> {
  List<String> img = [
    'assets/actorrobertpic.png',
    'assets/actorchrispic.png',
    'assets/actorchrisbalepic.png',
    'assets/actoremmapic.png',
  ];
  List<String> name = [
    'Robert',
    'Chris ',
    'Chris ',
    'Emma',
  ];
  List<String> names = [
    'Downey',
    'Hemsworth',
    'Bale',
    'Watson',
  ];
  List<String> imgs = [
    'assets/vikingspic.jpg',
    'assets/theflashpic.jpg',
    'assets/money hiestpic.jpg',
    'assets/mosterpic.jpg',
    'assets/leopic.jpeg',
    'assets/passionchristpic.jpeg',
    'assets/cidmoosapic.jpeg',
    'assets/mulanpic.jpg',
  ];
  List<String> flimname = [
    'Vikings',
    'The Flash',
    'Money Heist',
    'Monster House',
    'Leo',
    'Passion Christ',
    'Cid Moosa',
    'Mulan'
  ];
  List<String> hr = [
    '6 Season',
    '2h 37m',
    '5 Season',
    '1hr 37m',
    '2h 45m',
    '2h 23m',
    '2h 23m',
    '3 Season'
  ];
  List<String> rate = [
    '3.0',
    '4.5',
    '4.2',
    '2.3',
    '2.1',
    '3.4',
    '3.5',
    '4.6',
  ];
  @override
  Widget build(BuildContext context) {
    final namestyle = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 13,
    );
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Serach',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Actors',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    img[index],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: namestyle,
                              ),
                              Text(
                                names[index],
                                style: namestyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                'Movies & Series',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 130,
                              height: 150,
                              child: Image.asset(
                                imgs[index],
                              ),
                            ),
                            Text(
                              flimname[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  hr[index],
                                  style: namestyle,
                                ),
                                // SizedBox(
                                //   width: 45,
                                // ),
                                // RatingBar.builder(
                                //   initialRating: 3,
                                //   minRating: 1,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: true,
                                //   itemCount: 8,
                                //   // itemPadding:
                                //   //     EdgeInsets.symmetric(horizontal: 4.0),
                                //   itemBuilder: (context, _) => Icon(
                                //     Icons.star,
                                //     color: Colors.amber,
                                //     size: 12,
                                //   ),
                                //   onRatingUpdate: (rating) {
                                //     print(rating);
                                //   },
                                // ),
                                Text(
                                  rate[index],
                                  style: namestyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

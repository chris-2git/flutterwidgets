import 'package:demo2/welcomepage/detailspage/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Shopepage extends StatefulWidget {
  const Shopepage({super.key});

  @override
  State<Shopepage> createState() => _ShopepageState();
}

class _ShopepageState extends State<Shopepage> {
  bool colo = true;
  bool col = false;
  bool color = true;
  bool co = false;
  bool re = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Search products',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colo = !colo;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 60,
                        child: Card(
                          color: colo ? Colors.green : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: colo ? Colors.green : Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                  color: colo ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          col = !col;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 60,
                        child: Card(
                          color: col ? Colors.green : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: col ? Colors.green : Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Fruits',
                              style: TextStyle(
                                  color: col ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          color = !color;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 60,
                        child: Card(
                          color: color ? Colors.green : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: color ? Colors.green : Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'vegetables',
                              style: TextStyle(
                                  color: color ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          co = !co;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 60,
                        child: Card(
                          color: co ? Colors.green : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: co ? Colors.green : Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Meat &Fish',
                              style: TextStyle(
                                  color: co ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detailspage()));
              },
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 232, 232),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '10% off',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  re = !re;
                                });
                              },
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: re ? Colors.red : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/Tomato.jpg',
                          height: 70,
                          width: 70,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 15,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              glow: false,
                              onRatingUpdate: (rating) {},
                            ),
                            Text(
                              '(4.7)',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.pink,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Alpohnasa',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rs.34.98',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                'Rs.667',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '500gm',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

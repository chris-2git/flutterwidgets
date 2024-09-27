import 'package:demo2/dogs.dart';
import 'package:demo2/dogs2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pet extends StatefulWidget {
  const Pet({super.key});

  @override
  State<Pet> createState() => _PetState();
}

class _PetState extends State<Pet> {
  List<String> image = [
    'assets/dogphoto.jpg',
    'assets/cat.jpg',
    'assets/bird.jpg',
    'assets/fish.jpg'
  ];
  List<String> images = [
    'assets/bird.jpg',
    'assets/dogphoto.jpg',
    'assets/fish.jpg',
    'assets/cat.jpg'
  ];
  List<String> yr = ['2 year', '5 Year', '4 year', '2 year'];
  List<String> no = ['3', '1', '4', '5'];
  List<String> name = ['prince', 'Ram', 'Rom', 'Roma'];
  List<String> na = [
    'Fantail Pigeon',
    'American Eskimo',
    'Not Given',
    'Not Given'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 25,
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 18, 114, 97),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pets Adoption',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'kollam,India',
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/dog doc.png',
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: 30,
        height: 40,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.add,
              color: Colors.grey,
            ),
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.person_4_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 90,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dogs()));
                      },
                      child: Container(
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          image: DecorationImage(
                            image: AssetImage(
                              image[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Pets Near You',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dogs2(),
                                ));
                          },
                          child: Container(
                            width: 180,
                            height: 141,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  images[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 148,
                          height: 141,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'male',
                                ),
                                Text(
                                  no[index],
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  yr[index],
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dog cat.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      na[index],
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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

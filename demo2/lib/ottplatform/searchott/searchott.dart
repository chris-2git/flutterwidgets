import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchott extends StatefulWidget {
  const Searchott({super.key});

  @override
  State<Searchott> createState() => _SearchottState();
}

class _SearchottState extends State<Searchott> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Actors',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: size.height * 0.300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 50,
                                height: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/harrypic.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Robert',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Downey',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Movies & Series',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: size.height * 1000,
                width: size.width * 200,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.4),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: size.width * 20,
                          height: size.height * 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/profile1.jpg',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'The flash',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

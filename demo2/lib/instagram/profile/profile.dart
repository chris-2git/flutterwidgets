import 'package:flutter/material.dart';

class Profileinsta extends StatefulWidget {
  const Profileinsta({super.key});

  @override
  State<Profileinsta> createState() => _ProfileinstaState();
}

class _ProfileinstaState extends State<Profileinsta> {
  List<String> img = [
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspicf.jpg',
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspicf.jpg',
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspicf.jpg',
    'assets/profile1.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspicf.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_pin),
                ),
                Text(
                  'Person detalis',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: size.width * 0.30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile1.jpg'),
                    ),
                    Positioned(
                      left: 70,
                      top: 70,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '31',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '199',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '199',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('Following')
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name :',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'username :',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Bio :',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 120, left: 120),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stroy Highlights',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.grid_on_outlined,
                    ),
                    Icon(
                      Icons.person_pin_rounded,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: size.height * 0.40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          img[index],
                        ),
                      ),
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

import 'package:flutter/material.dart';

class Dogs extends StatefulWidget {
  const Dogs({super.key});

  @override
  State<Dogs> createState() => _DogsState();
}

class _DogsState extends State<Dogs> {
  List<String> img = [
    'assets/noramaldog.jpg',
    'assets/boxerdog.jpg',
    'assets/bulldog.jpg',
    'assets/danedog.jpg',
    'assets/labdog.jpg',
    'assets/poodledog.jpg',
    'assets/rottdog.jpg',
    'assets/germandog.jpg'
  ];
  List<String> na = [
    'Normal Dog',
    'Boxer Dog',
    'Bull Dog',
    'Dane Dog',
    'Lab Dog',
    'Rott Dog',
    'Germansheaperd Dog'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dogs Details',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Trivandrum,India',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.add_shopping_cart_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/dogicon.png',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                img[index],
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      Container(
                        height: 84,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name :${na[index]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Speices : '),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dog doc.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Doctor consalt:')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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

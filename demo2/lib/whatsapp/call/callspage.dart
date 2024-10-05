import 'package:flutter/material.dart';

class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  List<String> img = [
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
    'assets/whatspic1.jpg',
    'assets/whatspic2.jpg',
    'assets/whatspic3.jpg',
    'assets/whatspic4.jpg',
    'assets/whatspicf.jpg',
    'assets/whatspicm.jpg',
  ];
  List<String> na = [
    'christy',
    'joshua',
    'varghese',
    'Leo',
    'John',
    'suresh',
    'Tony',
    'Rahul',
    'anju',
    'Praveena',
    'Praven',
    'Vishal',
    'Athira',
    'Christ',
    'sam',
    'kiran',
    'leo',
    'Martin',
    'thejus',
    'prejus',
    'John',
    'suresh',
    'Tony',
    'Rahul',
    'anju',
    'Praveena',
    'Praven',
    'Vishal',
    'Athira',
    'Christ',
  ];
  List<String> time = [
    "5.00 am",
    " 7.00 am",
    '5.45 am',
    '5.6 am',
    '4.56 pm',
    '7.00 pm',
    '8.00 pm',
    '9.00 pm',
    '12.00 pm',
    '13.45 pm',
    '4.34 am',
    '9.00 am',
    '11.00 am',
    '12.45 am',
    '12.54 pm',
    "5.00 am",
    " 7.00 am",
    '5.45 am',
    '5.6 am',
    '4.56 pm',
    '7.00 pm',
    '8.00 pm',
    '9.00 pm',
    '12.00 pm',
    '13.45 pm',
    '4.34 am',
    '9.00 am',
    '11.00 am',
    '12.45 am',
    '12.54 pm',
  ];
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
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      na[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(Icons.arrow_outward_rounded),
                        Text(
                          time[index],
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(img[index]),
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

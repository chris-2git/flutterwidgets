import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<String> name = [
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
  ];
  List<String> time = [
    'Today 1:45',
    'Today 5:34',
    'Today 4:34',
    'Today 3:54',
    'Today 6:12',
    'yesterday 2:11',
    'yesterday 5:12',
    'yesterday 7:7',
    'yesterday 12:1',
    'yesterday 2:34',
    '23/4/8',
    '3/4/22',
    '4/7/8',
    '3/12/23',
    '8/9/21',
  ];
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
  ];
  List<String> names = [
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
  List<String> times = [
    '6/7/23',
    '7/7/23',
    '8/7/23',
    '9/7/23',
    '10/7/23',
    '23/4/8',
    '3/4/22',
    '4/7/8',
    '3/12/23',
    '8/9/21',
    '6/7/23',
    '7/7/23',
    '8/7/23',
    '9/7/23',
    '10/7/23',
  ];
  List<String> imgs = [
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
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile1.jpg'),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Status',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'today 10:20 am',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: size.width * 0.35,
                        ),
                        Icon(Icons.more_vert_rounded),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Recent Updates',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      name[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      time[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage(
                        img[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  'Viewed Updates',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      names[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      times[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        imgs[index],
                      ),
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

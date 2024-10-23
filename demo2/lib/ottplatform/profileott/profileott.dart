import 'package:demo2/final.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileott extends StatefulWidget {
  const profileott({super.key});

  @override
  State<profileott> createState() => _profileottState();
}

class _profileottState extends State<profileott> {
  List<String> name = [
    'Bookmark List',
    'Reviews',
    'History',
    'History',
  ];
  List<IconData> label = [
    Icons.bookmark,
    Icons.reviews,
    Icons.history,
    Icons.history,
  ];
  List<IconData> lab = [
    Icons.settings,
    Icons.subscriptions_outlined,
    Icons.lock,
    Icons.logout,
  ];
  List<IconData> labe = [
    Icons.arrow_forward_ios_sharp,
    Icons.arrow_forward_ios_sharp,
    Icons.arrow_forward_ios_sharp,
    Icons.arrow_forward_ios_sharp,
  ];
  List<String> names = ['Settings', 'Subcrbition', 'Change Password', 'Logout'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(
                        'assets/profile1.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Leo John Varghese',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(249, 225, 9, 0.902),
                          ),
                          onPressed: () {},
                          child: Text(
                            '💎 Premium',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.19,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 45, 43, 43),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Activites',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Profilecontainer(
                      leadingicon: label[index],
                      name: name[index],
                      colo: Colors.black,
                      traling: labe[index],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Profilecontainer(
                      leadingicon: lab[index],
                      traling: labe[index],
                      name: names[index],
                      colo: Colors.red,
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

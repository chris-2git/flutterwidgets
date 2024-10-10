import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileott extends StatefulWidget {
  const profileott({super.key});

  @override
  State<profileott> createState() => _profileottState();
}

class _profileottState extends State<profileott> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
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
                          backgroundColor: Color.fromARGB(255, 45, 43, 43)),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Bookmark List',
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color.fromARGB(255, 29, 29, 29),
                            prefixIcon: Icon(
                              Icons.bookmark,
                              color: Colors.grey,
                            ),
                            suffixText: '16',
                            suffixStyle: TextStyle(color: Colors.grey),
                            filled: true),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Color.fromARGB(255, 31, 31, 31),
                          filled: true,
                          hintText: 'Reviews',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.history,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
                          fillColor: Color.fromARGB(255, 31, 31, 31),
                          filled: true,
                          hintText: 'History',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(
                              Icons.settings,
                              color: Colors.grey,
                            ),
                            hintText: 'Settings',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
                            fillColor: Color.fromARGB(255, 31, 31, 31),
                            filled: true),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(
                              Icons.subscriptions_rounded,
                              color: Colors.grey,
                            ),
                            hintText: 'Subscription',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
                            fillColor: Color.fromARGB(255, 31, 31, 31),
                            filled: true),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            hintText: 'Change Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
                            fillColor: Color.fromARGB(255, 31, 31, 31),
                            filled: true),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Icon(
                              Icons.logout,
                              color: Colors.grey,
                            ),
                            hintText: 'logout',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.arrow_forward_ios_outlined),
                            fillColor: Color.fromARGB(251, 154, 15, 5),
                            filled: true),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

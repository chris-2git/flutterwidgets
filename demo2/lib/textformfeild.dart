import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: BorderSide.none),
                  hintText: 'Email',
                  //labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  fillColor: Color.fromARGB(255, 225, 235, 241),
                  filled: true),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90)),
                  hintText: 'Password',
                  //labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  fillColor: Color.fromARGB(255, 225, 235, 241),
                  filled: true),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90),
                    borderSide: BorderSide.none),
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                fillColor: Color.fromARGB(255, 225, 235, 241),
                filled: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:demo2/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          Icon(
            Icons.exit_to_app_sharp,
            size: 35,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/backgrimg.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.black,
                  ),
                  fillColor: Color.fromARGB(255, 0, 212, 201),
                  filled: true),
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'password',
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  fillColor: Color.fromARGB(255, 0, 212, 201),
                  filled: true),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(17),
                ),
                hintText: 'username',
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.black,
                fillColor: Color.fromARGB(255, 0, 212, 201),
                filled: true,
                suffixText: '#&_',
              ),
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Reg()));
                    },
                    child: Text(
                      'login...? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

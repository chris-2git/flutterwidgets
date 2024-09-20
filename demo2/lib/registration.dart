import 'package:demo2/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/backgrimg1',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your credentials to register',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Middle Name',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Last Name',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      hintText: 'Address',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.place,
                        color: Colors.black,
                      ),
                      filled: true),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 230,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

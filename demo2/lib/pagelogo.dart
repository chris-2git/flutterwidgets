import 'package:demo2/bottomnavigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logopage extends StatefulWidget {
  const Logopage({super.key});

  @override
  State<Logopage> createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/empuranpic.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}

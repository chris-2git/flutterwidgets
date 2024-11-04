import 'package:flutter/material.dart';

void main() {
  runApp(Project1());
}

class Project1 extends StatelessWidget {
  const Project1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Petadoption(),
    );
  }
}

class Petadoption extends StatefulWidget {
  const Petadoption({super.key});

  @override
  State<Petadoption> createState() => _PetadoptionState();
}

class _PetadoptionState extends State<Petadoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

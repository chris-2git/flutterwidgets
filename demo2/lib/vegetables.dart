import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vege extends StatefulWidget {
  const vege({super.key});

  @override
  State<vege> createState() => _vegeState();
}

class _vegeState extends State<vege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.green,
        title: Text(
          'Vegetables',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
            childAspectRatio: 0.5),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.green),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

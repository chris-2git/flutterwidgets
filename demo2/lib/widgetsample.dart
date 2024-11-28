import 'package:flutter/material.dart';

class Samplewed extends StatefulWidget {
  const Samplewed({super.key});

  @override
  State<Samplewed> createState() => _SamplewedState();
}

class _SamplewedState extends State<Samplewed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                sampleContainer(Icons.home, 'Home', Colors.green),
                sampleContainer(Icons.settings, 'Settings', Colors.red)
              ],
            ),
            Row(
              children: [
                sampleContainer(Icons.home, 'Home', Colors.green),
                sampleContainer(Icons.settings, 'Settings', Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget sampleContainer(IconData icon, String name, Color newcolor) {
    return Container(
      height: 50,
      width: 150,
      color: newcolor,
      child: Row(
        children: [Icon(icon), SizedBox(width: 20), Text(name)],
      ),
    );
  }
}

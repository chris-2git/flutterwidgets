import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Timetext extends StatefulWidget {
  const Timetext({super.key});

  @override
  State<Timetext> createState() => _TimetextState();
}

class _TimetextState extends State<Timetext> {
  TimeOfDay testedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: testedTime,
    );
    if (picked != null && picked != testedTime) {
      setState(() {
        testedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              suffixIcon: IconButton(
                onPressed: () => _selectTime(context),
                icon: Icon(
                  Icons.alarm,
                ),
              ),
              hintText: testedTime.format(context),
            ),
          ),
        ),
      ),
    );
  }
}

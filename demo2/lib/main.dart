import 'package:demo2/API/api/api.dart';

import 'package:demo2/API2/api/api.dart';

import 'package:demo2/API3/Api/api.dart';
import 'package:demo2/APIPost/Loginvali/Registration/registration.dart';
import 'package:demo2/APIPost/Loginvali/loginvali.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GardenProvider()),
        ChangeNotifierProvider(
          create: (context) => FlimProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoriesProvider(),
        )
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Loginvali()),
    );
  }
}

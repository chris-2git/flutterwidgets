import 'package:demo2/API/api/api.dart';
import 'package:demo2/API/design/design.dart';
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
        ChangeNotifierProvider(create: (context) => GardenProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GardenScreen(),
        routes: {'all_gardens_screen': (context) => GardenScreen()},
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:tower_of_hanoy/screens/home_page.dart';
import 'package:tower_of_hanoy/screens/tower_simulation.dart';
import 'package:tower_of_hanoy/logic/steps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // home: TowerSimulation(numberOfDisks: 3),
    );
  }
}

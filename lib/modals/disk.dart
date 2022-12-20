import 'package:flutter/material.dart';

class Disk {
  final int diskNumber;
  late double diskWidth;
  late Color diskColor;

  List<Color> diskColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.cyan,
  ];

  Disk({required this.diskNumber}) {
    diskColor = diskColors[diskNumber - 1];
    diskWidth = 100 - (9 - diskNumber) * 5;
  }
}

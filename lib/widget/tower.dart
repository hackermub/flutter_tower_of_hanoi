import 'package:flutter/material.dart';

import 'package:tower_of_hanoy/modals/disk.dart';

class Tower extends StatelessWidget {
  final List<int> disks;
  final int towerNumber;
  late List<Disk> diskList = [];

  Tower({Key? key, required this.towerNumber, required this.disks}) {
    for (var i = 0; i < disks.length; i++) {
      diskList.add(Disk(diskNumber: disks[i]));
    }
    // print(diskList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 400,
          //   decoration: BoxDecoration(
          //     // color: Colors.grey,
          //     border: Border.all(
          //       color: Colors.black,
          //       width: 2,
          //     ),
          //   ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for (var i = diskList.length - 1; i >= 0; i--)
                Container(
                    // padding: EdgeInsets.all(5),
                    width: diskList[i].diskWidth,
                    height: 30,
                    decoration: BoxDecoration(
                      color: diskList[i].diskColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${diskList[i].diskNumber}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Tower $towerNumber",
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}

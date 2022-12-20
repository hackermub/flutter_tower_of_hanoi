import 'package:flutter/material.dart';
import 'package:manim_web/manim.dart';

import 'package:tower_of_hanoy/widget/tower.dart';
import 'package:tower_of_hanoy/logic/steps.dart';

class TowerSimulation extends StatefulWidget {
  final int numberOfDisks;
  late Steps steps;

  TowerSimulation({Key? key, required this.numberOfDisks}) {
    steps = Steps(numberOfDisks: numberOfDisks);
  }

  @override
  _TowerSimulationState createState() => _TowerSimulationState();
}

class _TowerSimulationState extends State<TowerSimulation> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "Simulating tower of Hanoy with ${widget.numberOfDisks} disks"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Simulating tower of Hanoy with ${widget.numberOfDisks} disks",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Text(
                "Step ${currentStep}/${widget.steps.stepsList.length - 1}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tower(
                    towerNumber: 1,
                    disks: widget.steps.stepsList[currentStep][1 - 1],
                  ),
                  const SizedBox(width: 20),
                  Tower(
                    towerNumber: 2,
                    disks: widget.steps.stepsList[currentStep][2 - 1],
                  ),
                  const SizedBox(width: 20),
                  Tower(
                    towerNumber: 3,
                    disks: widget.steps.stepsList[currentStep][3 - 1],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (currentStep < widget.steps.stepsList.length - 1) {
                      currentStep++;
                    }
                  });
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

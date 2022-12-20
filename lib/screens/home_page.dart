import 'package:flutter/material.dart';

import 'package:tower_of_hanoy/screens/tower_simulation.dart';

class HomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _numberOfDisksController =
      TextEditingController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tower of Hanoi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select the number of disks to play with: (1 - 10)",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _numberOfDisksController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number of disks',
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Text is empty';
                        }
                        if (int.parse(text) < 1 || int.parse(text) > 10) {
                          return 'The Number must be between 1 and 10';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 60),
                      maximumSize: const Size(100, 60),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TowerSimulation(
                              numberOfDisks:
                                  int.parse(_numberOfDisksController.text),
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text('Play'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

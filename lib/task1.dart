import 'package:flutter/material.dart';
import 'package:test2/task_2/task2.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double opacityLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: GestureDetector(
            onTap: () {
              setState(() {
                opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
              });
            },
            child: Center(
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(
                  seconds: 2,
                ),
                child: const FlutterLogo(size: 150),
              ),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Task_2(),
                ));
              },
              child: Text("Task 2"))
        ],
      ),
    );
  }
}

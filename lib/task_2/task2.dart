import 'package:flutter/material.dart';

import '../task_3/task3.dart';

class Task_2 extends StatelessWidget {
  const Task_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Hero(
              tag: 'hero_logo',
              child: FlutterLogo(size: 100,),
            ),
            InkWell(
              child: const Text("Move to the second page"),
              // onTap: () {
              //   // Navigator.of(context).push(Transition(page: Page2()));
              // },
              onTap: () {
                _gotoDetailsPage(context);
              },
            )
          ],
        ),
      ),
    );
  }


  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 150),
              child: const Hero(
                tag: 'hero_logo',
                child: FlutterLogo(
                  size: 280,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Task_3(),
                ));
              },
              child: const Text("Task 3"),
            )
          ],
        ),
      ),
      transitionDuration: Duration(seconds: 2),
    ));
  }



}

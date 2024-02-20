import 'package:flutter/material.dart';

class Task_3 extends StatefulWidget {
  @override
  State<Task_3> createState() => _Task_3State();
}

class _Task_3State extends State<Task_3> with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Rotation animation
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _rotationAnimation = Tween(begin: 0.0, end: 8 * 3.14).animate(_rotationController)
      ..addListener(() {
        setState(() {});
      });

    // Scale animation
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _scaleAnimation = Tween(begin: 0.0, end: 1.75).animate(_scaleController)
      ..addListener(() {
        setState(() {});
      });

    // Start both animations
    _rotationController.forward(); // Rotates continuously
    _scaleController.forward(); // Scales up once
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 3"),
      ),
      body: Center(
        child: Transform.rotate(
          angle: _rotationAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: const FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    _scaleController.dispose();
    super.dispose();
  }
}

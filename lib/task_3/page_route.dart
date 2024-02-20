import 'package:flutter/material.dart';

class Transition_2 extends PageRouteBuilder {
  final page;

  Transition_2({this.page})
      : super(
      pageBuilder: (context, animation, animationtwo) => page,
      transitionsBuilder: (context, animation, animationtwo, child){
        var begin = 0.0;
        var end = 1.5;
        var tween = Tween( begin:begin ,end: end);
        var offsetAnimation =CurvedAnimation(parent: animation, curve: Curves.linear);
        return RotationTransition(turns: tween.animate(offsetAnimation),child: child,);
      });
}

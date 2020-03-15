import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {

  final Color color;
  final Widget child;

  RoundedCard({@required this.color, this.child}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {

  final Color color;
  final Widget child;
  final Function onTap;

  RoundedCard({@required this.color, this.child, this.onTap}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
      ),
    );
  }
}

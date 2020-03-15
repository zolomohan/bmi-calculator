import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {

  final Color color;

  RoundedCard({this.color}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  final int number;

  NumberText(@required this.number) {}

  @override
  Widget build(BuildContext context) {
    return Text(
      '$number',
      style: TextStyle(
        fontSize: 55.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  final int number;

  NumberText(this.number);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$number',
      style: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 35.0,
        fontWeight: FontWeight.w700
      ),
    );
  }
}

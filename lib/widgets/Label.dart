import 'package:flutter/material.dart';

class Label extends StatelessWidget {

  final String label;

  Label(@required this.label){}

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 18.0,
        color: Color(0xFF8D8E98),
      ),
    );
  }
}

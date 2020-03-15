import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundIconButton(this.icon, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0
      ),
      child: Center(child: Icon(icon)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bmi_calculator/config/constants.dart';

class BaseButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  BaseButton({@required this.onTap, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kPrimaryColor,
        width: double.infinity,
        height: 60.0,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 23.0),
          ),
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/widgets/Label.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  IconLabel({@required this.icon, @required this.label}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon, size: 80.0),
        SizedBox(height: 5.0),
        Label(label),
      ],
    );
  }
}

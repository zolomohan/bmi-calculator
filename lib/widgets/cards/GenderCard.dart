import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/UI/Label.dart';
import 'package:bmi_calculator/widgets/UI/RoundedCard.dart';
import 'package:bmi_calculator/config/constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;
  final bool selected;

  GenderCard(
      {@required this.icon,
      @required this.label,
      @required this.onTap,
      @required this.selected}) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCard(
        onTap: onTap,
        color: (selected) ? kActiveCardColor : kInactiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(icon, size: 80.0),
            SizedBox(height: 5.0),
            Label(label),
          ],
        ),
      ),
    );
  }
}

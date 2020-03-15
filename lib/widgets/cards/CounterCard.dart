import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/UI/RoundedCard.dart';
import 'package:bmi_calculator/config/constants.dart';
import 'package:bmi_calculator/widgets/UI/Label.dart';
import 'package:bmi_calculator/widgets/UI/NumberText.dart';
import 'package:bmi_calculator/widgets/UI/RoundIconButton.dart';

class CounterCard extends StatelessWidget {
  final int value;
  final String label;
  final Function onIncrease;
  final Function onDecrease;

  CounterCard({
    @required this.value,
    @required this.label,
    @required this.onIncrease,
    @required this.onDecrease
  }) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCard(
        color: kInactiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Label(label),
            NumberText(value),
            SizedBox(height: 3.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  Icons.add,
                  onPressed: onIncrease,
                ),
                SizedBox(width: 10.0),
                RoundIconButton(
                  Icons.remove,
                  onPressed: onDecrease,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

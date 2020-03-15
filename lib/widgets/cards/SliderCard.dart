import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/UI/RoundedCard.dart';
import 'package:bmi_calculator/config/constants.dart';
import 'package:bmi_calculator/widgets/UI/Label.dart';
import 'package:bmi_calculator/widgets/UI/NumberText.dart';

class SliderCard extends StatelessWidget {

  final double value;
  final Function onChanged;

  SliderCard({@required this.value, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCard(
        color: kInactiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Label('HEIGHT'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                NumberText(value.round()),
                Label('cm'),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape:
                  RoundSliderOverlayShape(overlayRadius: 30.0),
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: kSecondaryColor,
                  thumbColor: kPrimaryColor,
                  overlayColor: Color(0x29EB1555)),
              child: Slider(
                min: 50,
                max: 280,
                value: value.toDouble(),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

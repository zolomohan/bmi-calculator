import 'package:bmi_calculator/widgets/Label.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/RoundedCard.dart';
import 'package:bmi_calculator/widgets/IconLabel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/config/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RoundedCard(
                      onTap: () => setState(() => selectedGender = Gender.male),
                      color: (selectedGender == Gender.male)
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconLabel(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      onTap: () =>
                          setState(() => selectedGender = Gender.female),
                      color: (selectedGender == Gender.female)
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconLabel(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Label('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kSecondaryColor,
                        thumbColor: kPrimaryColor,
                        overlayColor: Color(0x29EB1555)
                      ),
                      child: Slider(
                        min: 50,
                        max: 280,
                        value: height.toDouble(),
                        onChanged: (double newHeight) =>
                            setState(() => height = newHeight),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: RoundedCard(color: kInactiveCardColor)),
                  Expanded(child: RoundedCard(color: kInactiveCardColor)),
                ],
              ),
            ),
            Container(
              color: kPrimaryColor,
              width: double.infinity,
              height: 60.0,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  "Calculate Your BMI",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

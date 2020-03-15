import 'package:bmi_calculator/widgets/Label.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/RoundedCard.dart';
import 'package:bmi_calculator/widgets/IconLabel.dart';
import 'package:bmi_calculator/widgets/NumberText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/config/constants.dart';
import 'package:bmi_calculator/widgets/RoundIconButton.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  double height = 170;
  int weight = 50;
  int age = 20;

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
                        NumberText(height.round()),
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
                  Expanded(
                    child: RoundedCard(
                      color: kInactiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Label('WEIGHT'),
                          NumberText(weight),
                          SizedBox(height: 3.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                Icons.add,
                                onPressed: () => setState(() => weight++),
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                Icons.remove,
                                onPressed: () => setState(() => weight--),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      color: kInactiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Label('AGE'),
                          NumberText(age),
                          SizedBox(height: 3.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                Icons.add,
                                onPressed: () => setState(() => age++),
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                Icons.remove,
                                onPressed: () => setState(() => age--),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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

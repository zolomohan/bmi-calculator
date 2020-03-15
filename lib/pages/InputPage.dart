import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/RoundedCard.dart';
import 'package:bmi_calculator/widgets/IconLabel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const calculateButtonColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
                          ? activeCardColor
                          : inactiveCardColor,
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
                          ? activeCardColor
                          : inactiveCardColor,
                      child: IconLabel(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: RoundedCard(color: inactiveCardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: RoundedCard(color: inactiveCardColor)),
                  Expanded(child: RoundedCard(color: inactiveCardColor)),
                ],
              ),
            ),
            Container(
              color: calculateButtonColor,
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

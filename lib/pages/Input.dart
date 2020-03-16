import 'package:bmi_calculator/pages/Result.dart';
import 'package:bmi_calculator/widgets/UI/buttons/BaseButton.dart';
import 'package:bmi_calculator/widgets/cards/CounterCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/cards/GenderCard.dart';
import 'package:bmi_calculator/widgets/cards/SliderCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/BMICalculator.dart';

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
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child:
              Text('BMI CALCULATOR', style: TextStyle(fontFamily: 'Raleway', fontSize: 22.0)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  GenderCard(
                    onTap: () => setState(() => selectedGender = Gender.male),
                    selected: (selectedGender == Gender.male),
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  GenderCard(
                    onTap: () => setState(() => selectedGender = Gender.female),
                    selected: (selectedGender == Gender.female),
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ],
              ),
            ),
            SliderCard(
              value: height,
              onChanged: (double newHeight) =>
                  setState(() => height = newHeight),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CounterCard(
                    value: weight,
                    label: 'WEIGHT',
                    onIncrease: () => setState(() => weight++),
                    onDecrease: () => setState(() => weight--),
                  ),
                  CounterCard(
                    value: age,
                    label: 'AGE',
                    onIncrease: () => setState(() => age++),
                    onDecrease: () => setState(() => age--),
                  ),
                ],
              ),
            ),
            BaseButton(
              buttonText: 'CALCULATE',
              onTap: () {
                BMICalculator calculator =
                    BMICalculator(height: height, weight: weight);
                calculator.calculateBMI();
                var result = calculator.getResult();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: calculator.calculateBMI(),
                              result: result['result'],
                              interpretation: result['interpretation'],
                            )));
              },
            )
          ],
        ),
      ),
    );
  }
}

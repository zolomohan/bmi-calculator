import 'package:bmi_calculator/config/constants.dart';
import 'package:bmi_calculator/widgets/UI/buttons/BaseButton.dart';
import 'package:bmi_calculator/widgets/UI/RoundedCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String result, interpretation, bmi;

  ResultPage({this.bmi, this.result, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RoundedCard(
                color: kInactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876),
                      ),
                    ),
                    Text(
                      bmi.toString(),
                      style: TextStyle(
                          fontSize: 100.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(fontSize: 22.0),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BaseButton(
              buttonText: 'RE-CALCULATE',
              onTap: () => Navigator.pop((context)),
            )
          ],
        ));
  }
}

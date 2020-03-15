import 'package:bmi_calculator/components/RoundedCard.dart';
import 'package:flutter/material.dart';

const cardColor = Color(0xFF1D1E33);
const calculateButtonColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: RoundedCard(color: cardColor)),
                  Expanded(child: RoundedCard(color: cardColor)),
                ],
              ),
            ),
            Expanded(child: RoundedCard(color: cardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: RoundedCard(color: cardColor)),
                  Expanded(child: RoundedCard(color: cardColor)),
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

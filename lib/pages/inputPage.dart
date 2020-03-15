import 'package:bmi_calculator/components/RoundedCard.dart';
import 'package:flutter/material.dart';

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
                Expanded(child: RoundedCard(color: Color(0xFF1D1E33))),
                Expanded(child: RoundedCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: RoundedCard(color: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: RoundedCard(color: Color(0xFF1D1E33))),
                Expanded(child: RoundedCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

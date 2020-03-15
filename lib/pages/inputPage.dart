import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/RoundedCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  Expanded(
                    child: RoundedCard(
                      color: cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: FaIcon(
                              FontAwesomeIcons.mars,
                              size: 80.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 18.0, color: Color(0xFF8D8E98)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      color: cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 18.0, color: Color(0xFF8D8E98)),
                          ),
                        ],
                      ),
                    ),
                  ),
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

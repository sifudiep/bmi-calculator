import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female
}

var userHeight = 160.0;

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  Color activeCardColor = Color(0xFF1D1E33);
  Color inactiveCardColor = Color(0xFF111328);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = selectedGender == Gender.male ? null : Gender.male;
                        });
                      },
                      child: ReusableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          text: "MALE",
                        ),
                        color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = selectedGender == Gender.female ? null : Gender.female;
                        });
                      },
                      child: ReusableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: "FEMALE",
                        ),
                        color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(color: activeCardColor),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(color: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

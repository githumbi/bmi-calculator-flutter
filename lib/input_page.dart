import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'cardContent.dart';

const bottomHeightContainer = 80.0;
const inactiveCardColor = Color(0XFF141A3B);
const activeCardColor = Color(0XFF282C4E);
const colorBottomButton = Color(0XFF141A3B);

//enum is used instead of saying man = 1 and woman =2
enum Gender {man, woman}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.man;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.man ? activeCardColor : inactiveCardColor,
                      cardChild: CardContent(
                        iconItem: FontAwesomeIcons.mars,
                        label: 'man',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                       selectedGender = Gender.woman;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.woman ? activeCardColor : inactiveCardColor,
                      cardChild: CardContent(
                        iconItem: FontAwesomeIcons.venus,
                        label: 'woman',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: colorBottomButton,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomHeightContainer,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFFFF4367),
            ),
            child: Text(
              'calculate your BMI',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

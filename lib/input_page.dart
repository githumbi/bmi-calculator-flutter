import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardContent.dart';
import 'reusableCard.dart';

const bottomHeightContainer = 80.0;
const colourCardBackground = Color(0XFF101427);
const colorBottomButton = Color(0XFF101427);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: colourCardBackground,
                    cardChild: CardContent(
                      iconItem: FontAwesomeIcons.venus,
                      label: 'man',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: colourCardBackground,
                    cardChild: CardContent(
                      iconItem: FontAwesomeIcons.mars,
                      label: 'woman',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: colourCardBackground,
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
                    colour: colourCardBackground,
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

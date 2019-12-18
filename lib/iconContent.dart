import 'package:flutter/material.dart';
import 'constants.dart';



class IconContent extends StatelessWidget {
  IconContent({@required this.iconItem, @required this.label});
  final IconData iconItem;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconItem,
          size: 80.0,
        ),
        SizedBox(
          height:  20.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}

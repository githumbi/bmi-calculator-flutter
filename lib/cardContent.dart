import 'package:flutter/material.dart';

const iconSize = 80.0;
const sizeBoxHeight = 20.0;

class CardContent extends StatelessWidget {
  CardContent({@required this.iconItem, @required this.label});
  final IconData iconItem;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconItem,
          size: iconSize,
        ),
        SizedBox(
          height: sizeBoxHeight,
        ),
        Text(label, style: TextStyle(color: Color(0XFFFCFDFF), fontSize: 20))
      ],
    );
  }
}

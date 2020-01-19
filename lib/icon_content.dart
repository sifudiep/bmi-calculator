import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.text});

  final IconData icon;
  final String text;
  final Color textColor = Color(0xFF8d8E98);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn({@required this.text, @required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15.0),
        Text(text, style: kTextStyle),
      ],
    );
  }
}

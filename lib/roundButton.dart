import 'package:flutter/material.dart';
import 'constants.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.icon, @required this.onTap});
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      fillColor: kRoundButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      child: Icon(icon),
    );
  }
}

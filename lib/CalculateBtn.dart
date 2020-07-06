import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateBtn extends StatelessWidget {
  CalculateBtn({@required this.btnTitle, @required this.onTap});

  final String btnTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomContainerColor,
          width: double.infinity,
          height: kBottomContainerHeight,
          margin: EdgeInsets.only(top: 10.0),
          child: Center(
              child: Text(
            btnTitle,
            style: kLargeBtnTextStyle,
          ))),
    );
  }
}

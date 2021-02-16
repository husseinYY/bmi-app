import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'CalculateBtn.dart';

class Calculate extends StatelessWidget {
  Calculate({this.bmiResult, this.bmiText, this.interpertation});

  final String bmiResult;
  final String bmiText;
  final String interpertation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 5.0,
          ),
          Text(
            'The results are in!',
            style: kLargeBtnTextStyle,
          ),
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: Container(
              color: kInactiveCardColor,
              width: 350.0,
              height: 350.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmiText.toUpperCase(),
                    style: kWeightText.copyWith(color: Colors.red),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      bmiResult.toUpperCase(),
                      style: kWeightResultNumber,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      interpertation.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kWeightDescription,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CalculateBtn(
              btnTitle: 'RECALCULATE!',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.getResult,
      @required this.getComment,
      @required this.calculateBMI});

  final String calculateBMI;
  final String getResult;
  final String getComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: (Text("Result", style: kResultText)),
            ),
          ),
          Expanded(
              flex: 7,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult,
                      style: kWeightText,
                    ),
                    Text("Underweight = <18.5 "),
                    Text("Normal weight = 18.5–24.9 "),
                    Text("Overweight = 25–29.9 "),
                    Text("Obesity = BMI of 30 or greater"),
                    Text(
                      calculateBMI,
                      style: kBMIText,
                    ),
                    Text(
                      getComment,
                      textAlign: TextAlign.center,
                      style: kComment,
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: BottomButton(
                text: "RE-CALCULATE",
                onTap: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}

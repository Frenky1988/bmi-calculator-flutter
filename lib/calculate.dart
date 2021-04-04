import 'dart:math';
import 'package:flutter/cupertino.dart';

class Calculator {
  Calculator({@required this.weight, @required this.height});

  int weight;
  int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return ("Underweight");
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return ("Normal weight");
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return ("Overweight");
    } else
      return ("Obesity");
  }

  String getComment() {
    {
      if (_bmi < 18.5) {
        return ("Your BMI result is pretty low. You should eat more.");
      } else if (_bmi >= 18.5 && _bmi <= 24.9) {
        return ("Well done! You have normal body weight! Just keep it up!");
      } else if (_bmi >= 25.0 && _bmi <= 29.9) {
        return ("You have higher then normal body weight. You should you should exercise more");
      } else
        return ("You have much higher body weight. You should eat less and exercise more. Take care of your health");
    }
  }
}

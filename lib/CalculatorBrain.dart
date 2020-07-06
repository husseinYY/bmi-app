import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpertation() {
    if (_bmi >= 25) {
      return 'You are overweight. Please, excerice sometime or eat less.';
    } else if (_bmi > 18.5) {
      return 'You are Normal keep it great.';
    } else {
      return 'You are underweight. Please, eat more and get healthier.';
    }
  }
}

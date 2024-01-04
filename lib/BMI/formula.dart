// ignore_for_file: camel_case_types

import 'dart:math';

class formula {
  formula({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String rangeBMI() {
    if (_bmi! <= 18.5) {
      return 'You Underweight ';
    } else if (_bmi! == 18.5 && _bmi! == 24.9) {
      return ' You Healthy Weight ';
    } else if (_bmi! == 25.0 && _bmi! == 29.9) {
      return 'You Overweight ';
    } else if (_bmi! >= 30.0) {
      return 'You Obesity ';
    } else {
      return 'Please! invalid expression';
    }
  }

  describeBMI() {
    if (_bmi! <= 18.5) {
      return '''You  are very severaled Underweight. And now focus on Meat,Rice,and pizze.Otherwise you will be very weekly.''';
    } else if (_bmi! == 18.5 && _bmi! == 24.9) {
      return '''You are Healthyweight and goodluck.And focus on Meat & avoid fastfood.Otherwise ban jahga  ga moto.''';
    } else if (_bmi! == 25.0 && _bmi! == 29.9) {
      return '''Please! avoid fastfood.Because you weight is over''';
    } else if (_bmi! >= 30.0) {
      return '''Please avoid fastfood. You are cross red line.Otherwire yours healthy fitness loss.''';
    } else {
      return 'Please! invalid expression';
    }
  }
}

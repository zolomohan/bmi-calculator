import 'dart:math';

class BMICalculator {
  final double height;
  final int weight;
  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getResult() {
    if (_bmi > 25)
      return {
        'result': 'OVERWEIGHT',
        'interpretation':
            'You have a higher than normal BMI. Try to exercise more.'
      };
    else if (_bmi > 18.5)
      return {
        'result': 'NORMAL',
        'interpretation':
        'You have a normal BMI. Good Job!'
      };
    else
      return {
        'result': 'UNDERWEIGHT',
        'interpretation':
        'You have a lower than normal BMI. Try to eat more.'
      };
  }
}

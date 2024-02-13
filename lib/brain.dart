import 'dart:ffi';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight}) : _bmi = 0.0;

  final int height;
  final int weight;

  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Try to exercise more, but remember you're already taking steps towards maintaining your health!";
    } else if (_bmi >= 18.5) {
      return "Good job! Keep up the great work to maintain your healthy lifestyle!";
    } else {
      return "Focus and eat more, while also celebrating the progress you've made towards reaching a healthy and normal BMI!";
    }
  }
}

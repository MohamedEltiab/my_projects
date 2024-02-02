import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  ResultScreen({required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Text(
          'Your BMI Result is: ${bmiResult.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

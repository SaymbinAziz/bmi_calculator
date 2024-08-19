import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final double bmi;

  const ResultsScreen({required this.bmi});

  @override
  Widget build(BuildContext context) {
    String bmiCategory;
    Color categoryColor;

    if (bmi < 18.5) {
      bmiCategory = 'Underweight';
      categoryColor = Colors.orangeAccent;
    } else if (bmi < 24.9) {
      bmiCategory = 'Normal weight';
      categoryColor = Colors.lightGreen;
    } else if (bmi < 29.9) {
      bmiCategory = 'Overweight';
      categoryColor = Colors.orangeAccent;
    } else {
      bmiCategory = 'Obesity';
      categoryColor = Colors.redAccent;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your BMI is ${bmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              Text(
                bmiCategory,
                style: TextStyle(fontSize: 24, color: categoryColor),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

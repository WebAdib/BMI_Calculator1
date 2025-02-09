import 'package:flutter/material.dart';

class DetailedResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    double bmi = args?['bmi'] ?? 0.0;
    String category = args?['category'] ?? "Unknown";

    return Scaffold(
      appBar: AppBar(title: Text('Detailed BMI Result')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              category,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: _getCategoryColor(bmi),
              ),
            ),
            SizedBox(height: 20),
            _getBMIDescription(bmi),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFD9944), // Primary color
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(double bmi) {
    if (bmi < 18.5) return Colors.blue;
    if (bmi < 25) return Colors.green;
    if (bmi < 30) return Colors.orange;
    return Colors.red;
  }

  Widget _getBMIDescription(double bmi) {
    String description;
    if (bmi < 18.5) {
      description =
          "You are underweight. Consider a balanced diet with more calories.";
    } else if (bmi < 25) {
      description = "You have a normal weight. Maintain a healthy lifestyle!";
    } else if (bmi < 30) {
      description =
          "You are overweight. Regular exercise and a healthy diet are recommended.";
    } else {
      description =
          "You are obese. Consult a doctor for guidance on weight management.";
    }
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}

// My application
import 'package:flutter/material.dart';
import 'DetailedResultScreen.dart';
import 'HomeScreen.dart';
import 'BMICalculatorScreen.dart';
import 'BMIResultScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: Color(0xFFFD9944),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFD9944),
          primary: Color(0xFFFD9944),
          secondary: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFD9944),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
      //home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/bmiCalculator': (context) => BMICalculatorScreen(),
        '/bmiResult': (context) => BMIResultScreen(),
        '/bmiDetails': (context) => DetailedResultScreen(), // Add this line
      },
    );
  }
}

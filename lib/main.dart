import 'package:bmi_calculator_flutter/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
          secondary: Colors.teal,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
      routes: {
        '/results': (context) => const ResultsPage(),
      },
    );
  }
}

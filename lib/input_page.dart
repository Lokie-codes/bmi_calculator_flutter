import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
          const ReusableCard(
            colour: Color(0xFF1D1E33),
          ),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  const ReusableCard({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

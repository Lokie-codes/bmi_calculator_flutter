import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                  colour: activeCardColor,
                  cardChild: IconContent(
                    label: 'Male',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    label: 'Female',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    label: 'Card 3',
                    icon: FontAwesomeIcons.earthEurope,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    label: 'Card 4',
                    icon: FontAwesomeIcons.earthAsia,
                  ),
                ),
                ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    label: 'Card 5',
                    icon: FontAwesomeIcons.earthAmericas,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum GenderType { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.none;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(GenderType gender) {
  //   gender == GenderType.male ? maleCardColor = activeCardColor : maleCardColor = inactiveCardColor;
  //   gender == GenderType.female ? femaleCardColor = activeCardColor : femaleCardColor = inactiveCardColor;
  //   // if (gender == GenderType.male) {
  //   //   maleCardColor = activeCardColor;
  //   //   femaleCardColor = inactiveCardColor;
  //   // } else {
  //   //   femaleCardColor = activeCardColor;
  //   //   maleCardColor = inactiveCardColor;
  //   // }
  // }

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      selectedGender = GenderType.male;
                    }),
                    child: ReusableCard(
                      colour: selectedGender == GenderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        label: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      selectedGender = GenderType.female;
                    }),
                    child: ReusableCard(
                      colour: selectedGender == GenderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        label: 'Female',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      label: 'Card 3',
                      icon: FontAwesomeIcons.earthEurope,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      label: 'Card 4',
                      icon: FontAwesomeIcons.earthAsia,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      label: 'Card 5',
                      icon: FontAwesomeIcons.earthAmericas,
                    ),
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

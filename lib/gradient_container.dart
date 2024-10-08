//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}) : super(key: key); //forwarding the key to the super class key
  const GradientContainer(
      {super.key,
      required this.colors}); //constructor function; can also accept positional or named arguments, used to build reusable custom widgets

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        //StyledText('Hello World!'),
      ),
    );
  }
}

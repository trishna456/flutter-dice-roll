//import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}) : super(key: key); //forwarding the key to the super class key
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {}

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
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            )
          ],
        ),
        //StyledText('Hello World!'),
      ),
    );
  }
}

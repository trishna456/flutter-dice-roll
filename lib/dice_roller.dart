import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //Widget Class
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//while working with stateful widgets, we will always need 2 classes
//_ means this is a private class
class _DiceRollerState extends State<DiceRoller> {
  //State Class
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //  currentDiceRoll = Random().nextInt(6) + 1; //reduntant object creation and deletion
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    //print('changing image');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

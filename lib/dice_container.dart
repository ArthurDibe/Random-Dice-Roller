import 'package:flutter/material.dart';
import 'dart:math'; // for generating random

var randomizer = Random();

class DiceContainer extends StatefulWidget {
  const DiceContainer({super.key});

  @override
  State<DiceContainer> createState() {
    return _DiceContainerState();
  }
}

class _DiceContainerState extends State<DiceContainer> {
  final verticalSpace = SizedBox(height: 20);
  var diceNumber = 2;

  void rollDice() {
    setState(() {
      this.diceNumber = randomizer.nextInt(6) + 1; // between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        verticalSpace,
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

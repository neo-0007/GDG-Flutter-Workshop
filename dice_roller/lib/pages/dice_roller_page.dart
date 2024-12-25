import 'package:dice_roller/widgets/roll_button.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRollerPage extends StatefulWidget {
  const DiceRollerPage({super.key});

  @override
  State<DiceRollerPage> createState() => _DiceRollerPageState();
}

class _DiceRollerPageState extends State<DiceRollerPage> {

  int currentDiceValue = 1;
  void rollDice() {
    setState(() {
      currentDiceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceValue.png',
            width: 300,
          ),
          SizedBox(height: 20),
          RollButton(text: 'ROLL', onTap: rollDice,),
        ],
      ),
    );
  }
}

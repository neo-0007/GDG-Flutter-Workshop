import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int dice = 1;
  Random generator = Random();

  void rollDice() {
    setState(() {
      dice = generator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/dice-$dice.png',
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(
                120,
                40,
              ),
              backgroundColor: Color(
                0xFFE0E0E0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
            child: Text('ROLL'),
          )
        ],
      ),
    );
  }
}
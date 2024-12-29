import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Dice Roller',
              style: TextStyle(
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Color(
            0xff1a0250,
          ),
          body: DiceRoller()),
    ),
  );
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int dice = 2;

  void rollDice() {
    setState(() {
      dice = Random().nextInt(6) + 1;
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
            onPressed: () {
              rollDice();
            },
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
